import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MöbiusSubmanifoldsCanonicalLaneLean

structure AdmissibleClass where
  object : MöbiusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MöbiusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MöbiusSubmanifoldsCanonicalLaneLean
end HautevilleHouse
