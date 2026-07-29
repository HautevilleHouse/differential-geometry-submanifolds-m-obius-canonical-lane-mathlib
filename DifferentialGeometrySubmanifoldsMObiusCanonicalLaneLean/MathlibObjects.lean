import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MöbiusSubmanifoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MöbiusSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MöbiusAdmittedObject where
  space : MöbiusSpace
  closedSubmanifold : Prop
  conformalStructure : Prop
  möbiusInvariant : Prop
  conclusion : möbiusInvariant

structure MöbiusEndgameState where
  object : MöbiusAdmittedObject

def MöbiusWitnessClosed (O : MöbiusAdmittedObject) : Prop :=
  O.möbiusInvariant

end MöbiusSubmanifoldsCanonicalLaneLean
end HautevilleHouse
