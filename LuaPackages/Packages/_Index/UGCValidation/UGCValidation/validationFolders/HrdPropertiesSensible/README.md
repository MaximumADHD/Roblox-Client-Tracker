This validation checks that HumanoidRigDescription and DigitsRigDescription properties are sensible for marketplace uploads.
For each MeshPart that contains an HRD, we inspect the property values to ensure they are within expected ranges. If a DRD exists, its properties are also validated.
At launch, these are all very strict, but behind dynamic ints to easily reduce limits after launch.