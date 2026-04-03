MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 1
        3 NEWTABLE                         R1 0 2
        5 LOADK                            R2 K0 ["> TextLabel"]
        6 NEWTABLE                         R3 1 1
        8 GETIMPORT                        R5 K3 [Color3.fromRGB]
       10 LOADN                            R6 255
       11 LOADN                            R7 0
       12 LOADN                            R8 0
       13 CALL                             R5 3 1
       14 SETTABLEKS                       R5 R3 K4 ["BackgroundColor3"]
       16 NEWTABLE                         R4 0 2
       18 LOADK                            R5 K5 ["> ImageLabel"]
       19 DUPTABLE                         R6 K7 [{"ImageTransparency"}]
       20 LOADK                            R7 K8 [0.5]
       21 SETTABLEKS                       R7 R6 K6 ["ImageTransparency"]
       23 SETLIST                          R4 R5 2 [1]
       25 SETLIST                          R3 R4 1 [1]
       27 SETLIST                          R1 R2 2 [1]
       29 SETLIST                          R0 R1 1 [1]
       31 RETURN                           R0 1
