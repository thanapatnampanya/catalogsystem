*** Variables ***
#GET PRICE INFO
${BASE_URL}     https://rm3-api.mango-qa.siammakro.cloud
${GET_PRICE_INFO_ENDPOINT}   /promotionservice/v6/get-price-info
@{PRODUCT_CODE}        800000
${CUSTOMER_MMID}       80400115160797
${PRICE_DATE}       2025-12-02T23:59:59
${STORE_CODE}       1
${PRICE_CHANNEL}        Assisted Sales

#ITEM PRICE
${ITEM_PRICE_ENDPOINT}      /catalog/v1/customers/items/prices      
${CV_CODE}         8040001151
${ITEM_PRICE_DATE}       2025-12-02T10:10:55.816Z
@{PRODUCT_LIST}         800000