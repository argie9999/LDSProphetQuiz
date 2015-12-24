//
//  PhotoDataSource.swift
//  LDSProphetQuiz
//
//  Created by Caleb Robinson on 11/27/15.
//  Copyright © 2015 Caleb Robinson. All rights reserved.
//

import UIKit

class PhotoDataSource {
    
    static let joseph_smith = UIImage(named: "joseph_smith")
    static let brigham_young = UIImage(named: "brigham_young")
    static let john_taylor = UIImage(named: "john_taylor")
    static let wilford_woodruff = UIImage(named: "wilford_woodruff")
    static let lorenzo_snow = UIImage(named: "lorenzo_snow")
    static let joseph_f_smith = UIImage(named: "joseph_f_smith")
    static let heber_j_grant = UIImage(named: "heber_j_grant")
    static let george_albert_smith = UIImage(named: "george_albert_smith")
    static let david_o_mckay = UIImage(named: "david_o_mckay")
    static let joseph_fielding_smith = UIImage(named: "joseph_fielding_smith")
    static let harold_b_lee = UIImage(named: "harold_b_lee")
    static let spencer_w_kimball = UIImage(named: "spencer_w_kimball")
    static let ezra_taft_benson = UIImage(named: "ezra_taft_benson")
    static let howard_w_hunter = UIImage(named: "howard_w_hunter")
    static let gordon_b_hinckley = UIImage(named: "gordon_b_hinckley")
    static let thomas_s_monson = UIImage(named: "thomas_s_monson")
    
    
    static let photos: [Int: UIImage?] = [
        1: joseph_smith,
        2: brigham_young,
        3: john_taylor,
        4: wilford_woodruff,
        5: lorenzo_snow,
        6: joseph_f_smith,
        7: heber_j_grant,
        8: george_albert_smith,
        9: david_o_mckay,
        10: joseph_fielding_smith,
        11: harold_b_lee,
        12: spencer_w_kimball,
        13: ezra_taft_benson,
        14: howard_w_hunter,
        15: gordon_b_hinckley,
        16: thomas_s_monson
    ]
    
    static let names: [Int: String] = [
        1: "Joseph Smith",
        2: "Brigham Young",
        3: "John Taylor",
        4: "Wilford Woodruff",
        5: "Lorenzo Snow",
        6: "Joseph F. Smith",
        7: "Heber J. Grant",
        8: "George Albert Smith",
        9: "David O. McKay",
        10: "Joseph Fielding Smith",
        11: "Harold B. Lee",
        12: "Spencer W. Kimball",
        13: "Ezra Taft Benson",
        14: "Howard W. Hunter",
        15: "Gordon B. Hinckley",
        16: "Thomas S. Monson"
    ]
}
