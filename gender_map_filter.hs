data Gender = Male | Female deriving (Show, Eq)

people = [(Male, "Mal"), (Female, "Zoe"), 
              (Male, "Wash"),  (Female, "Inara"), 
              (Male, "Jayne"), (Female, "Kaylee"),
              (Male, "Simon"), (Female, "River")]

main = do
     let females = (filter (\(a,b) -> a==Female) people)
     print females
     print (map snd females)
