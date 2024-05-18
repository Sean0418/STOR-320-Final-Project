# STOR-320 Project

## Contributors and Roles:
- Sean Shen, The Creator
- Robert Murray-Gramlich, The Interpreter
- Diya Joshi, The Orator
- Barrett White, The Orator
- Alan Spiwak, The deliverer
 
### Final Paper: [https://sean0418.github.io/STOR320FinalPaper.github.io/](https://sean0418.github.io/STOR320FinalPaper.github.io/)

## Description of Dataset
This project aims to be an analysis of the balance changes and tier system of MetaSRC. We currently have one dataset: S13LeagueOfLegendsData.csv, which contains the following information:
1. Name: Champion name
2. Class: The class of each champion, unique to each champion between patches describes their general playstyle, and is useful to group the champions.
3. Role: The role that the data is from for each champion
    - one of five choices: Top, Mid, Support, Jungle, or ADC. 
    - Multiple instances of a champion in each patch indicate that the champion was played in more than one goal significantly each patch, rounded to the hundredth place.
4. Tier: Tier of the champion for each patch as determined by MetaSRC per patch. 
5. Score: A numeric value for each champion in a patch that is calculated via a proprietary algorithm.
- Trend: The difference between the current and last patch for the score.
    - For patch 13_1 it uses 12_24 to calculate the trend, which is not included in this dataset.
    - For new champions introduced or new roles for champions, the trend is labeled as "999NEW".
6. Win%: The win percentage of each champion per patch in a specific role.
7. Role%: The percent of games played where a specific champion was picked in this role
    - for example, if the champion is Nami, the role is Support, and the value is 0.86, then 86% of the games Nami was played in for that patch were played as support, while 14% of games were played as some other role.
8.  Pick%: Percent of games where the champion was present in this specific role.
9. Ban%: Percent of games where this champion was banned.
    - This would be for any role, so for a champion who has two roles during one patch; say Qiyana on patch 13.3, they would have the same ban rate in both rows.
10. KDA: Kill/Death/Assist ratio for the champion by role by patch.
    - Calculated as $\frac{\text{Kills } + \text{ Assists}}{\text{Deaths}}$
11. Patch: Patch for the data, ranges from 13.1 to 13.24.
    - The format is 13_Patch.
12. Pick/Ban: The rate a champion is picked or banned
    - Calculated by $\text{Pick\%} + \text{Ban\%}$

## Project contents
1. ClassificationML
    - Classification of Tier using a 'ranger' random forest model, and impurity testing for the importance of variables
    - Found that pick ban rate was the most important variable in predicting tier, with over double the next impurity score, at statistically significant levels (p < 0.01).
2. AnalysisQs
    - Small analysis of different ideas present in the data set.
    - Contains insight into the volatility of champions, Win Rates over time, correlation between champions pick ban rates, and non-linear regression of win rate prediction using KDA and role.
