MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPTABLE                         R1 K3 [{"min", "max", "increment"}]
        4 LOADK                            R2 K4 [0.9]
        5 SETTABLEKS                       R2 R1 K0 ["min"]
        7 LOADK                            R2 K5 [1.05]
        8 SETTABLEKS                       R2 R1 K1 ["max"]
       10 LOADK                            R2 K6 [0.05]
       11 SETTABLEKS                       R2 R1 K2 ["increment"]
       13 SETTABLEKS                       R1 R0 K7 ["Height"]
       15 DUPTABLE                         R1 K3 [{"min", "max", "increment"}]
       16 LOADK                            R2 K8 [0.7]
       17 SETTABLEKS                       R2 R1 K0 ["min"]
       19 LOADN                            R2 1
       20 SETTABLEKS                       R2 R1 K1 ["max"]
       22 LOADK                            R2 K6 [0.05]
       23 SETTABLEKS                       R2 R1 K2 ["increment"]
       25 SETTABLEKS                       R1 R0 K9 ["Width"]
       27 DUPTABLE                         R1 K3 [{"min", "max", "increment"}]
       28 LOADK                            R2 K10 [0.95]
       29 SETTABLEKS                       R2 R1 K0 ["min"]
       31 LOADN                            R2 1
       32 SETTABLEKS                       R2 R1 K1 ["max"]
       34 LOADK                            R2 K6 [0.05]
       35 SETTABLEKS                       R2 R1 K2 ["increment"]
       37 SETTABLEKS                       R1 R0 K11 ["Head"]
       39 DUPTABLE                         R1 K3 [{"min", "max", "increment"}]
       40 LOADN                            R2 0
       41 SETTABLEKS                       R2 R1 K0 ["min"]
       43 LOADK                            R2 K12 [0.3]
       44 SETTABLEKS                       R2 R1 K1 ["max"]
       46 LOADK                            R2 K6 [0.05]
       47 SETTABLEKS                       R2 R1 K2 ["increment"]
       49 SETTABLEKS                       R1 R0 K13 ["BodyType"]
       51 DUPTABLE                         R1 K3 [{"min", "max", "increment"}]
       52 LOADN                            R2 0
       53 SETTABLEKS                       R2 R1 K0 ["min"]
       55 LOADN                            R2 1
       56 SETTABLEKS                       R2 R1 K1 ["max"]
       58 LOADK                            R2 K6 [0.05]
       59 SETTABLEKS                       R2 R1 K2 ["increment"]
       61 SETTABLEKS                       R1 R0 K14 ["Proportion"]
       63 RETURN                           R0 1
