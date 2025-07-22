MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K2 ["Attachment"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K3 ["Bone"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K4 ["WeldConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K5 ["HingeConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K6 ["BallSocketConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K7 ["RigidConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K8 ["PrismaticConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K9 ["CylindricalConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K10 ["UniversalConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K11 ["PlaneConstraint"]
  DUPTABLE R1 K13 [{"Attachments", "IgnoreSamePartCheck"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  LOADB R2 1
  SETTABLEKS R2 R1 K12 ["IgnoreSamePartCheck"]
  SETTABLEKS R1 R0 K14 ["RopeConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K15 ["RodConstraint"]
  DUPTABLE R1 K17 [{"Attachments", "Properties", "IgnoreSamePartCheck"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K20 [{"Stiffness", "Damping"}]
  LOADN R3 232
  SETTABLEKS R3 R2 K18 ["Stiffness"]
  LOADN R3 2
  SETTABLEKS R3 R2 K19 ["Damping"]
  SETTABLEKS R2 R1 K16 ["Properties"]
  LOADB R2 1
  SETTABLEKS R2 R1 K12 ["IgnoreSamePartCheck"]
  SETTABLEKS R1 R0 K21 ["SpringConstraint"]
  DUPTABLE R1 K22 [{"Attachments", "Properties"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K20 [{"Stiffness", "Damping"}]
  LOADN R3 232
  SETTABLEKS R3 R2 K18 ["Stiffness"]
  LOADN R3 2
  SETTABLEKS R3 R2 K19 ["Damping"]
  SETTABLEKS R2 R1 K16 ["Properties"]
  SETTABLEKS R1 R0 K23 ["TorsionSpringConstraint"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K24 ["NoCollisionConstraint"]
  DUPTABLE R1 K22 [{"Attachments", "Properties"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K26 [{"MaxTorque"}]
  LOADN R3 32
  SETTABLEKS R3 R2 K25 ["MaxTorque"]
  SETTABLEKS R2 R1 K16 ["Properties"]
  SETTABLEKS R1 R0 K27 ["AlignOrientation"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K28 ["AlignPosition"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 2
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K29 ["LineForce"]
  DUPTABLE R1 K1 [{"Attachments"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  SETTABLEKS R1 R0 K30 ["VectorForce"]
  DUPTABLE R1 K22 [{"Attachments", "Properties"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K32 [{"Torque"}]
  LOADK R3 K33 [{2000, 0, 0}]
  SETTABLEKS R3 R2 K31 ["Torque"]
  SETTABLEKS R2 R1 K16 ["Properties"]
  SETTABLEKS R1 R0 K31 ["Torque"]
  DUPTABLE R1 K22 [{"Attachments", "Properties"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K35 [{"AngularVelocity", "MaxTorque"}]
  LOADK R3 K36 [{0, 1, 0}]
  SETTABLEKS R3 R2 K34 ["AngularVelocity"]
  LOADN R3 32
  SETTABLEKS R3 R2 K25 ["MaxTorque"]
  SETTABLEKS R2 R1 K16 ["Properties"]
  SETTABLEKS R1 R0 K34 ["AngularVelocity"]
  DUPTABLE R1 K22 [{"Attachments", "Properties"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["Attachments"]
  DUPTABLE R2 K39 [{"MaxForce", "VectorVelocity"}]
  LOADN R3 16
  SETTABLEKS R3 R2 K37 ["MaxForce"]
  LOADK R3 K36 [{0, 1, 0}]
  SETTABLEKS R3 R2 K38 ["VectorVelocity"]
  SETTABLEKS R2 R1 K16 ["Properties"]
  SETTABLEKS R1 R0 K40 ["LinearVelocity"]
  RETURN R0 1
