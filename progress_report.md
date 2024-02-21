# Progress Report
## 0th Progress Report (02/11/2024)
* Made the GitHub repository
* Created the project plan, license, git ignore and README.
## 1st Progress Report (02/21/2024)
* Cleaned up the initial speakers_all.CSV data by dropping unused columns
* Retrieved missing audio samples from the dataset.
  * Used BS4 and request library to scrape the [accent.gmu.com](https://accent.gmu.edu) website and download the missing mp3 audio sample files.
* Examined the data frame further and looked at the age of the speakers for outliers and anomalies to see if any of them should be handled manually.
* Also looked at the 'age_onset' column which is the age the speaker learned English again focusing on outliers and anomalies and what they represent in the dataset.
  * Examined native language vs age onset to see the various ages in which different native groups learned English.