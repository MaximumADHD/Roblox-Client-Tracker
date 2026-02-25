MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R3 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-ViewTypeButton"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 2
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 ["> .ButtonContainer"]
       24 DUPTABLE                         R8 K12 [{"Size"}]
       25 GETIMPORT                        R9 K15 [UDim2.fromOffset]
       27 LOADN                            R10 100
       28 LOADN                            R11 32
       29 CALL                             R9 2 1
       30 SETTABLEKS                       R9 R8 K11 ["Size"]
       32 NEWTABLE                         R9 0 2
       34 MOVE                             R10 R1
       35 LOADK                            R11 K16 [".Icon"]
       36 DUPTABLE                         R12 K12 [{"Size"}]
       37 GETIMPORT                        R13 K15 [UDim2.fromOffset]
       39 LOADN                            R14 32
       40 LOADN                            R15 32
       41 CALL                             R13 2 1
       42 SETTABLEKS                       R13 R12 K11 ["Size"]
       44 CALL                             R10 2 1
       45 MOVE                             R11 R1
       46 LOADK                            R12 K17 ["> .ImageContainer"]
       47 DUPTABLE                         R13 K12 [{"Size"}]
       48 GETIMPORT                        R14 K15 [UDim2.fromOffset]
       50 LOADN                            R15 32
       51 LOADN                            R16 32
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K11 ["Size"]
       55 NEWTABLE                         R14 0 2
       57 MOVE                             R15 R1
       58 LOADK                            R16 K18 ["> ImageLabel .Grid"]
       59 DUPTABLE                         R17 K20 [{"Image"}]
       60 LOADK                            R18 K21 ["$GridImage"]
       61 SETTABLEKS                       R18 R17 K19 ["Image"]
       63 CALL                             R15 2 1
       64 MOVE                             R16 R1
       65 LOADK                            R17 K22 ["> ImageLabel .List"]
       66 DUPTABLE                         R18 K20 [{"Image"}]
       67 LOADK                            R19 K23 ["$ListImage"]
       68 SETTABLEKS                       R19 R18 K19 ["Image"]
       70 CALL                             R16 2 -1
       71 SETLIST                          R14 R15 -1 [1]
       73 CALL                             R11 3 -1
       74 SETLIST                          R9 R10 -1 [1]
       76 CALL                             R6 3 1
       77 MOVE                             R7 R1
       78 LOADK                            R8 K24 ["> .SliderContainer"]
       79 DUPTABLE                         R9 K12 [{"Size"}]
       80 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       82 LOADN                            R11 100
       83 LOADN                            R12 32
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K11 ["Size"]
       87 CALL                             R7 2 -1
       88 SETLIST                          R5 R6 -1 [1]
       90 DUPTABLE                         R6 K31 [{"ListIcon", "GridIcon", "SliderValueMin", "SliderValueMax", "SliderSnapIncrement", "SliderVerticalDragTolerance"}]
       91 LOADK                            R7 K32 ["rbxasset://textures/MaterialFramework/List.png"]
       92 SETTABLEKS                       R7 R6 K25 ["ListIcon"]
       94 LOADK                            R7 K33 ["rbxasset://textures/MaterialFramework/Grid.png"]
       95 SETTABLEKS                       R7 R6 K26 ["GridIcon"]
       97 LOADN                            R7 60
       98 SETTABLEKS                       R7 R6 K27 ["SliderValueMin"]
      100 LOADN                            R7 200
      101 SETTABLEKS                       R7 R6 K28 ["SliderValueMax"]
      103 LOADN                            R7 10
      104 SETTABLEKS                       R7 R6 K29 ["SliderSnapIncrement"]
      106 LOADN                            R7 44
      107 SETTABLEKS                       R7 R6 K30 ["SliderVerticalDragTolerance"]
      109 CALL                             R2 4 -1
      110 RETURN                           R2 -1
