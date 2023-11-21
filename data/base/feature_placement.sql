insert or replace into Modifiers(ModifierId,	ModifierType) select
	'E_'||DistrictType||'_ON_'||FeatureType,	'MODIFIER_PLAYER_CITIES_ADJUST_VALID_FEATURES_DISTRICTS'
	from Districts, Features 
	WHERE FeatureType IN('FEATURE_GEOTHERMAL_FISSURE','FEATURE_OASIS');

insert or replace into ModifierArguments(ModifierId,		Name,	Value) select
	'E_'||DistrictType||'_ON_'||FeatureType,		'DistrictType',		DistrictType
	from Districts, Features 
	WHERE FeatureType IN('FEATURE_GEOTHERMAL_FISSURE','FEATURE_OASIS');

insert or replace into ModifierArguments(ModifierId,		Name,	Value) select
	'E_'||DistrictType||'_ON_'||FeatureType,		'FeatureType',		FeatureType
	from Districts, Features 
	WHERE FeatureType IN('FEATURE_GEOTHERMAL_FISSURE','FEATURE_OASIS');

insert or replace into TraitModifiers(TraitType,		ModifierId) select
	'TRAIT_LEADER_MAJOR_CIV',	'E_'||DistrictType||'_ON_'||FeatureType
	from Districts, Features 
	WHERE FeatureType IN('FEATURE_GEOTHERMAL_FISSURE','FEATURE_OASIS');