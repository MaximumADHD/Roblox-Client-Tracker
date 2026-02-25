MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"SourceLine", "Condition", "LogMessage", "ContinueExecution", "RemoveOnHit"}]
        2 LOADK                            R1 K6 ["SourceLineColumn"]
        3 SETTABLEKS                       R1 R0 K0 ["SourceLine"]
        5 LOADK                            R1 K7 ["ConditionColumn"]
        6 SETTABLEKS                       R1 R0 K1 ["Condition"]
        8 LOADK                            R1 K8 ["LogMessageColumn"]
        9 SETTABLEKS                       R1 R0 K2 ["LogMessage"]
       11 LOADK                            R1 K9 ["ContinueExecutionColumn"]
       12 SETTABLEKS                       R1 R0 K3 ["ContinueExecution"]
       14 LOADK                            R1 K10 ["RemoveOnHitColumn"]
       15 SETTABLEKS                       R1 R0 K4 ["RemoveOnHit"]
       17 RETURN                           R0 1
