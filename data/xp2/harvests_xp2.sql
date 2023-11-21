INSERT OR REPLACE INTO Resource_Harvests
		(ResourceType, 	 		YieldType,    			Amount, 	PrereqTech)
VALUES
		('RESOURCE_OIL', 		'YIELD_PRODUCTION', 	5,			'TECH_REFINING');		

UPDATE Technologies
	SET Description = 'LOC_TECH_REFINING_DESCRIPTION'
WHERE TechnologyType = 'TECH_REFINING';
