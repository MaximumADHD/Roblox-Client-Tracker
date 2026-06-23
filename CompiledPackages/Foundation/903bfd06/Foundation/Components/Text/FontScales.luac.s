MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 GETIMPORT                        R1 K2 [Font.fromEnum]
        5 GETIMPORT                        R2 K5 [Enum.Font.BuilderSans]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K6 ["Family"]
       10 LOADK                            R2 K7 [1.26]
       11 SETTABLE                         R2 R0 R1
       12 RETURN                           R0 1
