//
// Copyright (c) 2023 Adyen N.V.
//
// This file is open source and available under the MIT license. See the LICENSE file for more info.
//

import Foundation

public protocol AnyResponseValidator {
    
    /// Validate the response data from a HTTP call for a given request
    /// - Parameters:
    ///   - responseData: The raw response data received from the API call
    ///   - request: The original request associated with the response
    ///   - responseHeaders: The HTTP headers in the response
    func validate(_ responseData: Data,
                            for request: some Request,
                            with responseHeaders: [AnyHashable : Any]) throws
}
