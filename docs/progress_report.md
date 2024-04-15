# Progress Report
This document contains updates regarding the Speech Accent Analysis project 
## 0th Progress Report (02/11/2024)
* Made the GitHub repository
* Created the project plan, license, gitignore file and README.
## 1st Progress Report (02/21/2024)
* Cleaned up the initial speakers_all.CSV data by dropping unused columns
* Retrieved missing audio samples from the dataset.
  * Used BS4 and request library to scrape the [accent.gmu.com](https://accent.gmu.edu) website and download the missing mp3 audio sample files.
* Examined the data frame further and looked at the age of the speakers for outliers and anomalies to see if any of them should be handled manually.
* Also looked at the 'age_onset' column which is the age the speaker learned English again focusing on outliers and anomalies and what they represent in the dataset.
  * Examined native language vs age onset to see the various ages in which different native groups learned English.
* This initial report focused mostly on processing the text metadata as it is readily available, thus a logical next step would be to dive into the analysis of the audio files and figure out a way to transcribe and encode them
  * I have contacted Dr. Steven H. Weinberger, who is the maintainer of the dataset to see if it would be possible to access the transcribed samples (they're on the website but as GIF files).
  * If that is a dead end, there are various phonetic transcription libraries for python such as Allosaurus which is a "pretrained universal phone recognizer. It can be used to recognize phones in more than 2000 languages." 
* Carried out some restructuring for the folders to make them more organized. 
* The notebook that was used for this part is [`initial_data_processing.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/initial_data_processing.ipynb).
## 2nd Progress Report (03/24/2024)
* After the first progress report I contacted Dr. Steven H. Weinberger regarding the dataset, securing access to a Dropbox containing transcriptions, `.wav` files, and an excel file [`speakers.xlsx`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/data_samples/speakers.xlsx) with detailed geographic speaker information not found in the Kaggle dataset.
* I decided to use the data Dr. Weinberger provided me moving forward, which meant I needed to redo parts of the data processing which I was okay with as it will be more informative.
  * Found in the [`full_data_processing.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/full_data_processing.ipynb) notebook.
  The structure breakdown of [`speakers.xlsx`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/data_samples/speakers.xlsx) is found in there, and I have provided a sample data folder [`/data_samples`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/tree/main/data_samples) that mimics the structure in my `/data` folder with some example files chosen randomly from each subdirectory.
  * Dr. Weinberger said in his response that the dataset is licensed under a creative commons license, and that I may share it with proper credits given. However, due to the sheer size of the data, I have only taken a sample seen in [`data_samples`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/tree/main/data_samples). 
* Admittedly the analysis was less detailed than the first one since I was already familiar with the structure of the dataset and just cut the chase and went right to cleanup. From the new dataset I
  * Did a bunch of punctuation and corrections to names between the column files and the actual file directories provided in the Dropbox.
  * Removed irrelevant columns and standardized column names for clarity.
  * Parsed the phonetic transcription `.rtf` (as well as `.txt` for some) into the custom data frame and saved it with pickles.
* While the process was tedious, I think it was necessary for the integrity and reliability of the data especially for future use, I will also share my modifications after this project is complete with Dr. Weinberger.
* After I constructed my custom data frame, I then proceeded to conduct preliminary data analysis in the [`biographical_analysis.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/biographical_analysis.ipynb) notebook, where I examined and poked around the different columns and fields that are not related to the transcription or wave files.
* In terms of future goals, I plan to make a phonetic parser for the transcriptions so I can leverage the smaller phonetic features and modifications to the base symbols. The goal will be to tie together the conclusions that will be drawn in the phonetic analysis to the biographical speaker analysis.
* When it comes to the specific repository license, I am going to stick with the GNU GENERAL PUBLIC LICENSE as I want to promote open access to and make the material in the repo readily available for people.
* The new notebooks for this part are [`biographical_analysis.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/biographical_analysis.ipynb) and [`full_data_processing.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/full_data_processing.ipynb).  


## 3rd Progress Report (04/08/2024)
In [`full_data_processing.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/full_data_processing.ipynb):
- Focus on ensuring the `native_language` column  and `ethnologue_language_code is` is standardized with iso639 codes and names.
- The `countries` column has been reviewed for correctness of country names or codes, maintaining consistence with the iso standards.

In [`biographical_analysis.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/biographical_analysis.ipynb):  
- I leveraged the Glottolog database to find the regions of the languages to generalize and reduce some of the languages being represented for the analysis.
- Mapping Ethnologue Language Codes to macroareas, addressing any gaps in representation, missing values, or parsing errors.
- Added more visualization and analysis for the biographical information by using the newly extrapolated macroareas and regions.

(new) [`phonological_processing.ipynb`](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/notebooks/phonological_processing.ipynb):
- Started with data integrity checks, identifying and correcting parsing abnormalities to ensure clean and reliable data for analysis.
- Focused heavily on segment level analysis of phonemes and words, to iteratively fix abnormalities in parsing.
- Panphon, a tool for processing phonological data, is employed to handle the transcription column.

**Additional Notes:**
- A bash script was written to convert all RTF transcription files to text for proper parsing.
- The `.gif` extensions were to be replaced with `.txt` in the `phonetic_transcription` column.
- In terms of the file structure of the data, I have added the bash script, the new `transcription_text` that the script dumped it's processed files into, as well as the pickled data frames for the processing.
- I decided to split the data set into two data frames, `bio_df` containing the biographical and language info specifications, and the other, `features_df` containing the phonological features. Both of the data frames are parallelized through the `speakerid` so there is no problem with mapping associated entries.
- I also added tables of content for the notebooks to make it easier to go back and fourth.
- Although this progress report was't as 'phonological analysis
 heavy as I'd liked it to be, I have set the stage to officially begin and to thoroughly analyze that for the presentation, as I have standardized all the entries and cleaned up all the columns including the transcriptions. My next goal is to completely dig through the `features_df` and connect my findings to any biographical details I can find, I am really tempted to consider proficiency for this part, but I have yet to figure out the detail on how I want to go about it.
