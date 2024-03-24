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
## 2nd Progress Report (03/24/2024)
* After the first progress report I contacted Dr. Steven H. Weinberger regarding the dataset, securing access to a Dropbox containing transcriptions, `.wav` files, and an excel file `speakers.xlsx` with detailed geographic speaker information not found in the Kaggle dataset
* I decided to use the data Dr. Weinberger provided me moving forward, which meant I needed to redo parts of the data processing which I was okay with as it will be more informative.
  * Found in the `full_data_processing.ipynb` notebook.
  The structure breakdown of `speakers.xlsx` is found in there, and I have provided a sample data folder `/data_samples` that mimics the structure in my `/data` folder with some example files chosen randomly from each subdirectory.
  * Dr. Weinberger said in his response that the dataset is licensed under a creative commons license, and that I may share it with proper credits given. However, due to the sheer size of the data, I have only taken a sample seen in `data_samples`. 
* Admittedly the analysis was less detailed than the first one since I was already familiar with the structure of the dataset and just cut the chase and went right to cleanup. From the new dataset I
  * Did a bunch of punctuation and corrections to names between the column files and the actual file directories provided in the Dropbox.
  * Removed irrelevant columns and standardized column names for clarity.
  * Parsed the phonetic transcription `.rtf` (as well as `.txt` for some) into the custom data frame and saved it with pickles.
* While the process was tedious, I think it was necessary for the integrity and reliability of the data especially for future use, I will also share my modifications after this project is complete with Dr. Weinberger.
* After I constructed my custom data frame, I then proceeded to conduct preliminary data analysis in the `biographical_analysis.ipynb` notebook, where I examined and poked around the different columns and fields that are not related to the transcription or wave files.
* In terms of future goals, I plan to make a phonetic parser for the transcriptions so I can leverage the smaller phonetic features and modifications to the base symbols. The goal will be to tie together the conclusions that will be drawn in the phonetic analysis to the biographical speaker analysis.
* When it comes to the specific repository license, I am going to stick with the GNU GENERAL PUBLIC LICENSE as I want to promote open access to and make the material in the repo readily available for people.
