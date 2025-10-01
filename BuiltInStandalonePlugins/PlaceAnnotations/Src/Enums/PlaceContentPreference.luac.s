MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"None", "All", "MentionsAndReplies", "Unknown"}]
  GETIMPORT R1 K7 [Enum.PlaceContentPreference.None]
  SETTABLEKS R1 R0 K0 ["None"]
  GETIMPORT R1 K8 [Enum.PlaceContentPreference.All]
  SETTABLEKS R1 R0 K1 ["All"]
  GETIMPORT R1 K9 [Enum.PlaceContentPreference.MentionsAndReplies]
  SETTABLEKS R1 R0 K2 ["MentionsAndReplies"]
  GETIMPORT R1 K10 [Enum.PlaceContentPreference.Unknown]
  SETTABLEKS R1 R0 K3 ["Unknown"]
  RETURN R0 1
