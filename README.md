# STOR320Project

## Contributors and Roles:
- Sean Shen, The Creator
- Robert Murray-Gramlich, The Interpreter
- Diya joshi, The Orator
- Barrett White, The Orator
- Alan Spiwak, The deliverer

## Description of Project (WIP)
This projects aims to be an analaysis of the balance changes and tier system of MetaSRC. We currently have one dataset: S13LeagueOfLegendsData.csv, which contains the following information:
- Name: Champion name
- Class: The class of each champion, unique to each champion between patches it describes their general playstyle, and is useful to group the champions.
- Role: The role that the data is from for each champion
    - one of five choices: Top, Mid, Support, Jungle, or ADC. 
    - Multiple instances of a champion each patch indicates that the champion was played in more than one goal significantly each patch, rounded to the hundreth place.
- Tier: Tier of the champion for each patch as determined by MetaSRC per patch. 
- Score: A numeric value for each chapmion in patch that is calculated via a proprietary algorithm.
- Trend: The difference between the current and last patch for the score.
    - For the patch 13_1 it uses 12_24 to calculate trend, which is not included in this dataset.
    - For new champions introduced, or new roles for champions, the trend is labeled as "999NEW".
- Win%: The win percentage of each champion per patch in a specific role.
- Role%: The percent of games played where a specific champion was picked in this role
    - for example if the champion is Nami, the role is Support, and the value is 0.86, then 86% of the games Nami was played in for that patch where played as suppport, while 14% of games were played as some other role.
- Pick%: Percent of games where the champion was present in this specific role.
- Ban%: Percent of games where this champion was banned.
    - This would be for any role, so for a champion who has two roles during one patch; say Qiyana on patch 13.3, they would have the same ban rate in both rows.
- KDA: Kill/Death/Assist ratio for the champion by role by patch.
    - Calculated as $\frac{\text{Kills } + \text{ Assists}}{\text{Deaths}}$
- Patch: Patch for the data, ranges from 13.1 to 13.24.
    - The format is 13_Patch.

