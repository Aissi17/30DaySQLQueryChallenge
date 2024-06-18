## Problem Statement:

- For pairs of brands in the same year (e.g. apple/samsung/2020 and samsung/apple/2020)

  - if custom1 = custom3 and custom2 = custom4 : then keep only one pair

- For pairs of brands in the same year

  - if custom1 != custom3 OR custom2 != custom4 : then keep both pairs

- For brands that do not have pairs in the same year : keep those rows as well
