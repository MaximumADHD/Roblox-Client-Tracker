MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K12 [{[1] = "request_player_prompt", ["RespondPlayerPrompt"] = "respond_player_prompt", ["TeamCommunication"] = "team_communication", ["NotifyFinished"] = "notify_finished", ["NotifyLeaderIsWaitingForTeamCommunications"] = "notify_leader_is_waiting_for_team_communications", ["NotifyLogging"] = "notify_logging"}]
        2 DUPTABLE                         R1 K14 [{"Commands"}]
        3 SETTABLEKS                       R0 R1 K13 ["Commands"]
        5 RETURN                           R1 1
