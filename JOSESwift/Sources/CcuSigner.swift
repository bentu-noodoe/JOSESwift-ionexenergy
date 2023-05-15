//
//  CcuSigner.swift
//  JOSESwift
//
//  Created by ZhengXun Tu on 2023/5/12.
//

import Foundation
import CommonCrypto

public struct CcuSigner<KeyType> {
    let signer: SignerProtocol

    /// Constructs a signer used to sign a JWS.
    ///
    /// - Parameters:
    ///   - signingAlgorithm: The desired `SignatureAlgorithm`.
    ///   - key: The key used to compute the JWS's signature or message authentication code (MAC).
    ///     Currently supported key types are: `SecKey` and `Data`.
    ///     - For _digital signature algorithms_ it is the sender's private key (`SecKey`)
    ///       with which the JWS should be signed.
    ///     - For _MAC algorithms_ it is the secret symmetric key (`Data`)
    ///       shared between the sender and the recipient.
    /// - Returns: A fully initialized `Signer` or `nil` if provided key is of the wrong type.
    public init(key: KeyType) {
        self.signer = ECSigner(algorithm: .ES256, privateKey: key as! ECSigner.KeyType)
    }
    
    public func sign(payload: Payload) throws -> Data {
        return try signer.sign(payload.data())
    }
}
