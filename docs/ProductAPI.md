# ProductAPI

All URIs are relative to *https://api.nutritionprivacy.de*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addProduct**](ProductAPI.md#addproduct) | **POST** /product | Add a new product.
[**getAllProducts**](ProductAPI.md#getallproducts) | **GET** /productPreviews | Returns all products as previews.
[**getProductByID**](ProductAPI.md#getproductbyid) | **GET** /product/{productID} | Finds a product by ID
[**searchByText**](ProductAPI.md#searchbytext) | **GET** /product | Finds products by text.


# **addProduct**
```swift
    open class func addProduct(product: Product? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Add a new product.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import NutritionPrivacyAPIClient

let product = Product(id: 123, barcode: 123, names: [LocalizedValue(value: "value_example", languageCode: "languageCode_example")], brands: [nil], servings: [Serving(name: "name_example", underlyingQuantity: Quantity(unit: "unit_example", value: 123))], totalQuantity: nil, nutriments: Nutriments(energy: 123, fats: 123, proteins: 123, carbohydrates: 123, fatDetails: Fats(saturatedFat: 123, butyricAcid: 123, caproicAcid: 123, caprylicAcid: 123, capricAcid: 123, lauricAcid: 123, myristicAcid: 123, palmiticAcid: 123, stearicAcid: 123, arachidicAcid: 123, behenicAcid: 123, lignocericAcid: 123, ceroticAcid: 123, montanicAcid: 123, melissicAcid: 123, monounsaturatedFat: 123, polyunsaturatedFat: 123, alphaLinolenicAcid: 123, eicosapentaenoicAcid: 123, docosahexaenoicAcid: 123, omega3Fat: 123, omega6Fat: 123, omega9Fat: 123, arachidonicAcid: 123, gammaLinolenicAcid: 123, dihomoGammaLinolenicAcid: 123, linoleicAcid: 123, oleicAcid: 123, transFat: 123, cholesterol: 123, elaidicAcid: 123, gondoicAcid: 123, meadAcid: 123, erucicAcid: 123, nervonicAcid: 123), proteinsDetails: Proteins(casein: 123, serumProteins: 123), carbohydratesDetails: Carbohydrates(sugars: 123, sucrose: 123, glucose: 123, fructose: 123, lactose: 123, maltose: 123, maltodextrins: 123, starch: 123, polyols: 123), vitamins: Vitamins(vitaminA: 123, vitaminB1: 123, vitaminB2: 123, vitaminPP: 123, vitaminB6: 123, vitaminB9: 123, vitaminB12: 123, vitaminC: 123, vitaminD: 123, vitaminE: 123, vitaminK: 123, betaCarotene: 123, pantothenicAcid: 123, biotin: 123), minerals: Minerals(calcium: 123, phosphorus: 123, iron: 123, magnesium: 123, zinc: 123, copper: 123, manganese: 123, fluoride: 123, selenium: 123, iodine: 123, chromium: 123, molybdenum: 123, salt: 123, chloride: 123, bicarbonate: 123, potassium: 123, sodium: 123, silica: 123), misc: MiscellaneousNutriments(caffeine: 123, taurine: 123, nucleotides: 123, fiber: 123, alcohol: 123)), verified: false, source: "source_example") // Product | Create a new product in the database (optional)

// Add a new product.
ProductAPI.addProduct(product: product) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | [**Product**](Product.md) | Create a new product in the database | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProducts**
```swift
    open class func getAllProducts(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Returns all products as previews.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import NutritionPrivacyAPIClient


// Returns all products as previews.
ProductAPI.getAllProducts() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductByID**
```swift
    open class func getProductByID(productID: UUID, completion: @escaping (_ data: Product?, _ error: Error?) -> Void)
```

Finds a product by ID

Finds a product by ID. A ID is either a barcode or a UUID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import NutritionPrivacyAPIClient

let productID = 987 // UUID | ID of product that needs to be fetched

// Finds a product by ID
ProductAPI.getProductByID(productID: productID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productID** | **UUID** | ID of product that needs to be fetched | 

### Return type

[**Product**](Product.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchByText**
```swift
    open class func searchByText(text: String, page: Int? = nil, completion: @escaping (_ data: ProductsSearchResponse?, _ error: Error?) -> Void)
```

Finds products by text.

Finds products which have either the passed text as prefix in their name or brand.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import NutritionPrivacyAPIClient

let text = "text_example" // String | Text that gets checked via prefix against name or brand of the product.
let page = 987 // Int | Page of the search results. (optional)

// Finds products by text.
ProductAPI.searchByText(text: text, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String** | Text that gets checked via prefix against name or brand of the product. | 
 **page** | **Int** | Page of the search results. | [optional] 

### Return type

[**ProductsSearchResponse**](ProductsSearchResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

