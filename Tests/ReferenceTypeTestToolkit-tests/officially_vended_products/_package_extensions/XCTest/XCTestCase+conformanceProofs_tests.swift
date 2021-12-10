//
//  XCTestCase+conformanceProofs_tests.swift
//  
//
//  Created by Jeremy Bannister on 12/10/21.
//

///
extension XCTestCase_tests {
    
    ///
    func test_proof_ReferenceType_Metatype () {
        func imagine <T: ReferenceType> (t: T) {
            ifGiven(metatype) {
                $0.proof_ReferenceType(T.self)
            }
        }
    }
    
    ///
    func test_proof_ReferenceType_instance () {
        func imagine <T: ReferenceType> (t: T) {
            ifGiven(metatype) {
                $0.proof_ReferenceType(t)
            }
        }
    }
}
