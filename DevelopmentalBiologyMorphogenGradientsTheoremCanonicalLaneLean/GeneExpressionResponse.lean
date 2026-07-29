import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean

structure GeneExpressionResponsePackage where
  thresholdActivation : Prop
  targetGeneExpression : Prop
  concentrationGradientMapping : Prop
  positionalInformation : Prop
  expressionPatternEstablished : Prop

structure GeneExpressionResponseEvidence (G : GeneExpressionResponsePackage) where
  thresholdActivationClosed : G.thresholdActivation
  targetGeneExpressionClosed : G.targetGeneExpression
  concentrationGradientMappingClosed : G.concentrationGradientMapping
  positionalInformationClosed : G.positionalInformation
  expressionPatternEstablishedClosed : G.expressionPatternEstablished

def GeneExpressionResponseClosed (G : GeneExpressionResponsePackage) : Prop :=
  G.thresholdActivation ∧ G.targetGeneExpression ∧ G.concentrationGradientMapping ∧
  G.positionalInformation ∧ G.expressionPatternEstablished

theorem gene_expression_response_closed_from_evidence (G : GeneExpressionResponsePackage)
    (E : GeneExpressionResponseEvidence G) : GeneExpressionResponseClosed G := by
  exact And.intro E.thresholdActivationClosed
    (And.intro E.targetGeneExpressionClosed
      (And.intro E.concentrationGradientMappingClosed
        (And.intro E.positionalInformationClosed E.expressionPatternEstablishedClosed)))

end DevelopmentalBiologyMorphogenGradientsTheoremCanonicalLaneLean
end HautevilleHouse