MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K3 [{"None", "All", "Unknown"}]
  GETIMPORT R1 K6 [Enum.AnnotationChannelContentPreference.None]
  SETTABLEKS R1 R0 K0 ["None"]
  GETIMPORT R1 K7 [Enum.AnnotationChannelContentPreference.All]
  SETTABLEKS R1 R0 K1 ["All"]
  GETIMPORT R1 K8 [Enum.AnnotationChannelContentPreference.Unknown]
  SETTABLEKS R1 R0 K2 ["Unknown"]
  RETURN R0 1
