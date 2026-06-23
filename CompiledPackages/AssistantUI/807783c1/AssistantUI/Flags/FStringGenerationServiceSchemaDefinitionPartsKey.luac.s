MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FastSetting"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["createFString"]
       12 LOADK                            R2 K7 ["GenerationServiceSchemaDefinitionPartsKey"]
       13 LOADK                            R3 K8 ["Groups"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1
