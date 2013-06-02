data MetricUnit = Meter
                | Liter
                | KiloGram
                  deriving (Show, Eq)

data ImperialUnit = Yard
                  | Gallon
                  | Pound
                    deriving (Show, Eq)

data Measurement = MetricMeasurement Double MetricUnit 
                 | ImperialMeasurement Double ImperialUnit 
                   deriving (Show)

convert :: Measurement -> Measurement

convert (MetricMeasurement x u)
    | u==Meter    = ImperialMeasurement (1.0936*x) Yard
    | u==Liter    = ImperialMeasurement (0.2642*x) Gallon
    | u==KiloGram = ImperialMeasurement (2.2046*x) Pound

convert (ImperialMeasurement x u)
    | u==Yard   = MetricMeasurement (0.9144*x) Meter
    | u==Gallon = MetricMeasurement (3.7854*x) Liter
    | u==Pound  = MetricMeasurement (0.4536*x) KiloGram

main = do
	print (convert (MetricMeasurement 2 Meter))
	print (convert (convert (MetricMeasurement 2 Meter)))
	print (convert (MetricMeasurement 2 Liter))
	print (convert (ImperialMeasurement 2 Gallon))
