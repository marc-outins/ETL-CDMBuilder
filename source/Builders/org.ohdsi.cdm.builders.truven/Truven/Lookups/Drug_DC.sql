﻿SELECT DISTINCT stcm.SOURCE_CODE, stcm.TARGET_CONCEPT_ID
FROM SOURCE_TO_CONCEPT_MAP stcm
WHERE stcm.TARGET_VOCABULARY_ID = 8 /*RXNORM*/
	  AND stcm.SOURCE_VOCABULARY_ID = 9 /*NDC*/
      AND stcm.PRIMARY_MAP = 'Y'
      AND (stcm.INVALID_REASON IS NULL or stcm.INVALID_REASON = '')
      AND GETDATE() BETWEEN stcm.VALID_START_DATE AND stcm.VALID_END_DATE


