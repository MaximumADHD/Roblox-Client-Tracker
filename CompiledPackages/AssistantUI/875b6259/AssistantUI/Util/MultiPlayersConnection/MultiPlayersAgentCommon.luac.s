MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"RequestPlayerPrompt", "RespondPlayerPrompt", "TeamCommunication", "NotifyFinished", "NotifyLeaderIsWaitingForTeamCommunications", "NotifyLogging"}]
        2 LOADK                            R1 K7 ["request_player_prompt"]
        3 SETTABLEKS                       R1 R0 K0 ["RequestPlayerPrompt"]
        5 LOADK                            R1 K8 ["respond_player_prompt"]
        6 SETTABLEKS                       R1 R0 K1 ["RespondPlayerPrompt"]
        8 LOADK                            R1 K9 ["team_communication"]
        9 SETTABLEKS                       R1 R0 K2 ["TeamCommunication"]
       11 LOADK                            R1 K10 ["notify_finished"]
       12 SETTABLEKS                       R1 R0 K3 ["NotifyFinished"]
       14 LOADK                            R1 K11 ["notify_leader_is_waiting_for_team_communications"]
       15 SETTABLEKS                       R1 R0 K4 ["NotifyLeaderIsWaitingForTeamCommunications"]
       17 LOADK                            R1 K12 ["notify_logging"]
       18 SETTABLEKS                       R1 R0 K5 ["NotifyLogging"]
       20 DUPTABLE                         R1 K14 [{"Commands"}]
       21 SETTABLEKS                       R0 R1 K13 ["Commands"]
       23 RETURN                           R1 1
