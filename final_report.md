# Speech Accent Analysis

by Dastan Abdulla

## 1. Introduction
The study of language variation and its relationship to a speaker's native language and country of origin has significant implications across multiple domains, including sociolinguistics, language policy, education, and social integration. By examining the phonetic, lexical, and syntactic features of English as a second language, we can gain valuable insights into the ways in which a speaker's linguistic background influences their acquisition and use of English. This project aims to explore the predictive power of these linguistic features in determining a speaker's native language and geographical origins, which can contribute to our understanding of language variation and change as well as understanding social integration of multilingual individual in English dominated speech communities.

## 2. Background
Previous studies that have attempted to address this task have acknowledged the inherent challenges, with reported performances averaging around 67% accuracy [[paper](https://arxiv.org/pdf/1811.05540)]. However, it is important to note that these studies included a limited sample of eleven different ethnic non-native speakers, which may not provide a sufficiently representative dataset considering the existence of approximately 650 ethnic groups across 190 countries [[source](https://www.washingtonpost.com/news/worldviews/wp/2013/05/16/a-revealing-map-of-the-worlds-most-and-least-ethnically-diverse-countries/)]. To obtain more conclusive results, future research should aim to incorporate a more diverse and statistically significant representation of ethnic non-native speakers.
## 3. Data sourcing.
The Complete Speech Accent Archive is a comprehensive dataset containing speech samples from a diverse range of speakers. Each speaker in the archive was asked to recite the passage found in [sample_read.txt](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/data_samples/sample_read.txt)
The dataset is accompanied by a spreadsheet named [speakers.xlsx](https://github.com/Data-Science-for-Linguists-2024/Speech-Accent-Analysis/blob/main/data_samples/speakers.xlsx) which provides detailed information about each speaker.
Dr. Weinberger has confirmed that the dataset is licensed under a Creative Commons license, allowing me to share it with proper attribution. However, due to the dataset's size, I have only included a representative sample in the "/data_samples" folder.
## 4. Data cleanup
I started by ensuring that the audio and transcription files were present in the dataset. While most of the files were available, I had to make numerous corrections to address typos, mistakes, and inconsistent formatting across the dataset. To standardize the data, I decided to use ISO standard conventions for normalization, particularly for language and country names, which required significant effort.  
To assist with the normalization process, I utilized the pycountry library (although it's not a full-fledged library) in Python. Additionally, I had to convert the RTF transcription files to TXT format, as the initial attempt to use a Python library for this purpose was unsuccessful.  
To enhance the dataset with additional information, I cross-referenced the languages with Glottolog 5.0, a powerful resource that allowed me to extract continent information for each language. Later on, I also incorporated latitude and magnitude information for each country. Glottolog 5.0 proved to be an extremely valuable source, offering the potential to trace down dialects and language families. However, I ultimately decided against pursuing this avenue, as it became extremely convoluted.  

## 5. Analysis


## 6. Conclusion
... ...

