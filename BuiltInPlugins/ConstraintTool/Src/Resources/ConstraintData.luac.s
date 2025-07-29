MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["SimEnableCreateBone"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  NEWTABLE R1 32 0
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K6 ["Attachment"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K7 ["WeldConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K8 ["HingeConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K9 ["BallSocketConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K10 ["RigidConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K11 ["PrismaticConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K12 ["CylindricalConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K13 ["UniversalConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K14 ["PlaneConstraint"]
  DUPTABLE R2 K16 [{"Attachments", "IgnoreSamePartCheck"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  LOADB R3 1
  SETTABLEKS R3 R2 K15 ["IgnoreSamePartCheck"]
  SETTABLEKS R2 R1 K17 ["RopeConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K18 ["RodConstraint"]
  DUPTABLE R2 K20 [{"Attachments", "Properties", "IgnoreSamePartCheck"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  DUPTABLE R3 K23 [{"Stiffness", "Damping"}]
  LOADN R4 232
  SETTABLEKS R4 R3 K21 ["Stiffness"]
  LOADN R4 2
  SETTABLEKS R4 R3 K22 ["Damping"]
  SETTABLEKS R3 R2 K19 ["Properties"]
  LOADB R3 1
  SETTABLEKS R3 R2 K15 ["IgnoreSamePartCheck"]
  SETTABLEKS R2 R1 K24 ["SpringConstraint"]
  DUPTABLE R2 K25 [{"Attachments", "Properties"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  DUPTABLE R3 K23 [{"Stiffness", "Damping"}]
  LOADN R4 232
  SETTABLEKS R4 R3 K21 ["Stiffness"]
  LOADN R4 2
  SETTABLEKS R4 R3 K22 ["Damping"]
  SETTABLEKS R3 R2 K19 ["Properties"]
  SETTABLEKS R2 R1 K26 ["TorsionSpringConstraint"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K27 ["NoCollisionConstraint"]
  DUPTABLE R2 K25 [{"Attachments", "Properties"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  DUPTABLE R3 K29 [{"MaxTorque"}]
  LOADN R4 32
  SETTABLEKS R4 R3 K28 ["MaxTorque"]
  SETTABLEKS R3 R2 K19 ["Properties"]
  SETTABLEKS R2 R1 K30 ["AlignOrientation"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K31 ["AlignPosition"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K32 ["LineForce"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K33 ["VectorForce"]
  DUPTABLE R2 K25 [{"Attachments", "Properties"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Attachments"]
  DUPTABLE R3 K35 [{"Torque"}]
  LOADK R4 K36 [{2000, 0, 0}]
  SETTABLEKS R4 R3 K34 ["Torque"]
  SETTABLEKS R3 R2 K19 ["Properties"]
  SETTABLEKS R2 R1 K34 ["Torque"]
  DUPTABLE R2 K25 [{"Attachments", "Properties"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Attachments"]
  DUPTABLE R3 K38 [{"AngularVelocity", "MaxTorque"}]
  LOADK R4 K39 [{0, 1, 0}]
  SETTABLEKS R4 R3 K37 ["AngularVelocity"]
  LOADN R4 32
  SETTABLEKS R4 R3 K28 ["MaxTorque"]
  SETTABLEKS R3 R2 K19 ["Properties"]
  SETTABLEKS R2 R1 K37 ["AngularVelocity"]
  DUPTABLE R2 K25 [{"Attachments", "Properties"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Attachments"]
  DUPTABLE R3 K42 [{"MaxForce", "VectorVelocity"}]
  LOADN R4 16
  SETTABLEKS R4 R3 K40 ["MaxForce"]
  LOADK R4 K39 [{0, 1, 0}]
  SETTABLEKS R4 R3 K41 ["VectorVelocity"]
  SETTABLEKS R3 R2 K19 ["Properties"]
  SETTABLEKS R2 R1 K43 ["LinearVelocity"]
  SETGLOBAL R1 K44 ["ConstraintTypes"]
  JUMPIFNOT R0 [+8]
  GETGLOBAL R1 K44 ["ConstraintTypes"]
  DUPTABLE R2 K5 [{"Attachments"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K4 ["Attachments"]
  SETTABLEKS R2 R1 K45 ["Bone"]
  GETGLOBAL R1 K44 ["ConstraintTypes"]
  RETURN R1 1
