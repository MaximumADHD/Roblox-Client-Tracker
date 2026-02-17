MAIN:
  PREPVARARGS 0
  NEWTABLE R0 1 0
  DUPTABLE R1 K6 [{"None", "Story", "Storybook", "Folder", "Alert", "Pin"}]
  LOADK R2 K7 ["none"]
  SETTABLEKS R2 R1 K0 ["None"]
  LOADK R2 K8 ["story"]
  SETTABLEKS R2 R1 K1 ["Story"]
  LOADK R2 K9 ["storybook"]
  SETTABLEKS R2 R1 K2 ["Storybook"]
  LOADK R2 K10 ["folder"]
  SETTABLEKS R2 R1 K3 ["Folder"]
  LOADK R2 K11 ["alert"]
  SETTABLEKS R2 R1 K4 ["Alert"]
  LOADK R2 K12 ["pin"]
  SETTABLEKS R2 R1 K5 ["Pin"]
  SETTABLEKS R1 R0 K13 ["TreeNodeIcon"]
  RETURN R0 1
