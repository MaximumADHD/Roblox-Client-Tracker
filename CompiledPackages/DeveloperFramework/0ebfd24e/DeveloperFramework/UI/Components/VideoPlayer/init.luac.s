MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Typecheck"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K4 ["Parent"]
       22 GETTABLEKS                       R3 R3 K9 ["MediaPlayerWrapper"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K4 ["Parent"]
       31 GETTABLEKS                       R4 R4 K10 ["StatelessVideoPlayer"]
       33 CALL                             R3 1 1
       34 MOVE                             R4 R2
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K11 ["wrap"]
       39 MOVE                             R6 R4
       40 GETIMPORT                        R7 K1 [script]
       42 CALL                             R5 2 0
       43 RETURN                           R4 1
