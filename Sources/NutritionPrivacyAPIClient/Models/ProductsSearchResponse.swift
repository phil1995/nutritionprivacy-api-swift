//
// ProductsSearchResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProductsSearchResponse: Codable, JSONEncodable, Hashable {

    static let pageRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let totalProductsRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    static let pageSizeRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var page: Int?
    public var totalProducts: Int?
    /** The maximum amount of products which are delivered per page. This is a constant which gets not changed. */
    public var pageSize: Int?
    public var products: [Product]?

    public init(page: Int? = nil, totalProducts: Int? = nil, pageSize: Int? = nil, products: [Product]? = nil) {
        self.page = page
        self.totalProducts = totalProducts
        self.pageSize = pageSize
        self.products = products
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case page
        case totalProducts
        case pageSize
        case products
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(page, forKey: .page)
        try container.encodeIfPresent(totalProducts, forKey: .totalProducts)
        try container.encodeIfPresent(pageSize, forKey: .pageSize)
        try container.encodeIfPresent(products, forKey: .products)
    }
}

