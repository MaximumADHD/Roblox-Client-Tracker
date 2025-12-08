PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["SimCreateAnimationConstraint"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  SETUPVAL R0 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  LOADB R0 0
  GETIMPORT R1 K1 [pcall]
  NEWCLOSURE R2 P0
  CAPTURE REF R0
  CALL R1 1 0
  NEWTABLE R1 32 0
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K4 ["Attachment"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K5 ["WeldConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K6 ["HingeConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K7 ["BallSocketConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K8 ["RigidConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K9 ["PrismaticConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K10 ["CylindricalConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K11 ["UniversalConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K12 ["PlaneConstraint"]
  DUPTABLE R2 K14 [{"Attachments", "IgnoreSamePartCheck"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  LOADB R3 1
  SETTABLEKS R3 R2 K13 ["IgnoreSamePartCheck"]
  SETTABLEKS R2 R1 K15 ["RopeConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K16 ["RodConstraint"]
  DUPTABLE R2 K18 [{"Attachments", "Properties", "IgnoreSamePartCheck"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  DUPTABLE R3 K21 [{"Stiffness", "Damping"}]
  LOADN R4 232
  SETTABLEKS R4 R3 K19 ["Stiffness"]
  LOADN R4 2
  SETTABLEKS R4 R3 K20 ["Damping"]
  SETTABLEKS R3 R2 K17 ["Properties"]
  LOADB R3 1
  SETTABLEKS R3 R2 K13 ["IgnoreSamePartCheck"]
  SETTABLEKS R2 R1 K22 ["SpringConstraint"]
  DUPTABLE R2 K23 [{"Attachments", "Properties"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  DUPTABLE R3 K21 [{"Stiffness", "Damping"}]
  LOADN R4 232
  SETTABLEKS R4 R3 K19 ["Stiffness"]
  LOADN R4 2
  SETTABLEKS R4 R3 K20 ["Damping"]
  SETTABLEKS R3 R2 K17 ["Properties"]
  SETTABLEKS R2 R1 K24 ["TorsionSpringConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K25 ["NoCollisionConstraint"]
  DUPTABLE R2 K23 [{"Attachments", "Properties"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  DUPTABLE R3 K27 [{"MaxTorque"}]
  LOADN R4 32
  SETTABLEKS R4 R3 K26 ["MaxTorque"]
  SETTABLEKS R3 R2 K17 ["Properties"]
  SETTABLEKS R2 R1 K28 ["AlignOrientation"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K29 ["AlignPosition"]
  JUMPIFNOT R0 [+5]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  JUMP [+1]
  LOADNIL R2
  SETTABLEKS R2 R1 K30 ["AnimationConstraint"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 2
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K31 ["LineForce"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K32 ["VectorForce"]
  DUPTABLE R2 K23 [{"Attachments", "Properties"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["Attachments"]
  DUPTABLE R3 K34 [{"Torque"}]
  LOADK R4 K35 [{2000, 0, 0}]
  SETTABLEKS R4 R3 K33 ["Torque"]
  SETTABLEKS R3 R2 K17 ["Properties"]
  SETTABLEKS R2 R1 K33 ["Torque"]
  DUPTABLE R2 K23 [{"Attachments", "Properties"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["Attachments"]
  DUPTABLE R3 K37 [{"AngularVelocity", "MaxTorque"}]
  LOADK R4 K38 [{0, 1, 0}]
  SETTABLEKS R4 R3 K36 ["AngularVelocity"]
  LOADN R4 32
  SETTABLEKS R4 R3 K26 ["MaxTorque"]
  SETTABLEKS R3 R2 K17 ["Properties"]
  SETTABLEKS R2 R1 K36 ["AngularVelocity"]
  DUPTABLE R2 K23 [{"Attachments", "Properties"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["Attachments"]
  DUPTABLE R3 K41 [{"MaxForce", "VectorVelocity"}]
  LOADN R4 16
  SETTABLEKS R4 R3 K39 ["MaxForce"]
  LOADK R4 K38 [{0, 1, 0}]
  SETTABLEKS R4 R3 K40 ["VectorVelocity"]
  SETTABLEKS R3 R2 K17 ["Properties"]
  SETTABLEKS R2 R1 K42 ["LinearVelocity"]
  DUPTABLE R2 K3 [{"Attachments"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K2 ["Attachments"]
  SETTABLEKS R2 R1 K43 ["Bone"]
  SETGLOBAL R1 K44 ["ConstraintTypes"]
  GETGLOBAL R1 K44 ["ConstraintTypes"]
  CLOSEUPVALS R0
  RETURN R1 1
