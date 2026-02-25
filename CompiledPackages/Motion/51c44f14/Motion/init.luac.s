MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R2 K3 [script]
        5 GETTABLEKS                       R1 R2 K4 ["Motion"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R4 K3 [script]
       12 GETTABLEKS                       R3 R4 K5 ["Utility"]
       14 GETTABLEKS                       R2 R3 K6 ["useMotion"]
       16 CALL                             R1 1 1
       17 GETIMPORT                        R2 K1 [require]
       19 GETIMPORT                        R5 K3 [script]
       21 GETTABLEKS                       R4 R5 K7 ["AnimatePresence"]
       23 GETTABLEKS                       R3 R4 K7 ["AnimatePresence"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K1 [require]
       28 GETIMPORT                        R6 K3 [script]
       30 GETTABLEKS                       R5 R6 K7 ["AnimatePresence"]
       32 GETTABLEKS                       R4 R5 K8 ["usePresence"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K1 [require]
       37 GETIMPORT                        R6 K3 [script]
       39 GETTABLEKS                       R5 R6 K9 ["Types"]
       41 CALL                             R4 1 1
       42 DUPTABLE                         R5 K14 [{"createState", "animate", "transition", "useMotion", "usePresence", "AnimatePresence", "TransitionPreset"}]
       43 GETTABLEKS                       R6 R0 K10 ["createState"]
       45 SETTABLEKS                       R6 R5 K10 ["createState"]
       47 GETTABLEKS                       R6 R0 K11 ["animate"]
       49 SETTABLEKS                       R6 R5 K11 ["animate"]
       51 GETTABLEKS                       R6 R0 K12 ["transition"]
       53 SETTABLEKS                       R6 R5 K12 ["transition"]
       55 SETTABLEKS                       R1 R5 K6 ["useMotion"]
       57 SETTABLEKS                       R3 R5 K8 ["usePresence"]
       59 SETTABLEKS                       R2 R5 K7 ["AnimatePresence"]
       61 GETIMPORT                        R6 K1 [require]
       63 GETIMPORT                        R9 K3 [script]
       65 GETTABLEKS                       R8 R9 K15 ["Enums"]
       67 GETTABLEKS                       R7 R8 K13 ["TransitionPreset"]
       69 CALL                             R6 1 1
       70 SETTABLEKS                       R6 R5 K13 ["TransitionPreset"]
       72 RETURN                           R5 1
