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