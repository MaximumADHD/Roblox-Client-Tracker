MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["HostSurface"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 4 0
       12 LOADN                            R2 24
       13 SETTABLEKS                       R2 R1 K6 ["IMAGE_COUNT"]
       15 LOADN                            R2 30
       16 SETTABLEKS                       R2 R1 K7 ["ELEVATION"]
       18 NEWTABLE                         R2 0 0
       20 LOADN                            R5 0
       21 GETTABLEKS                       R6 R1 K6 ["IMAGE_COUNT"]
       23 SUBK                             R3 R6 K8 [1]
       24 LOADN                            R4 1
       25 FORNPREP                         R3
       26 DUPTABLE                         R8 K11 [{"azimuth", "elevation"}]
       27 GETTABLEKS                       R12 R1 K6 ["IMAGE_COUNT"]
       29 DIVRK                            R11 K13 [360] R12
       30 MUL                              R10 R11 R5
       31 ADDK                             R9 R10 K12 [45]
       32 SETTABLEKS                       R9 R8 K9 ["azimuth"]
       34 GETTABLEKS                       R9 R1 K7 ["ELEVATION"]
       36 SETTABLEKS                       R9 R8 K10 ["elevation"]
       38 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       40 MOVE                             R7 R2
       41 GETIMPORT                        R6 K16 [table.insert]
       43 CALL                             R6 2 0
       44 FORNLOOP                         R3
       45 SETTABLEKS                       R2 R1 K17 ["VIEW_ANGLES"]
       47 RETURN                           R1 1
