//
//  IAPCenter.swift
//  BlackSreenVideo
//
//  Created by yihuang on 2022/12/2.
//

import Foundation
import StoreKit
enum ProductID {
    
    
    ///心經
    case heart
    
    ///大悲咒
    case sad
    
    ///淨水咒
    case water
    
    ///往生淨土神咒
    case dead
    
    ///日光菩薩咒
    case sun
    
    ///月光菩薩咒
    case moon
    
    ///文殊心咒
    case killHeart
    
    ///楞嚴咒咒心
    case yen
    
    ///大勢至菩薩心咒
    case da4
    
    ///準提佛母心咒
    case monther
    
    /// 滅定業真言
    case breakTrue
    
    ///綠度母心咒
    case fateDoMother
    
    var id: String  {
        switch self {
            
        case .heart:
            return "a"
        case .sad:
            return "a"
        case .water:
            return "a"
        case .dead:
            return "a"
        case .sun:
            return "a"
        case .moon:
            return "a"
        case .killHeart:
            return "a"
        case .yen:
            return "a"
        case .da4:
            return "a"
        case .monther:
            return "a"
        case .breakTrue:
            return "a"
        case .fateDoMother:
            return "a"
        }
    }
    
    var content: String {
        switch self {
            
        case .heart:
            return """




觀自在菩薩。行深般若波羅蜜多時。
照見五蘊皆空。度一切苦厄。
舍利子。色不異空。空不異色。
色即是空。空即是色。
受想行識。亦復如是。
舍利子。是諸法空相。
不生不滅。不垢不淨。不增不減。
是故空中無色。無受想行識。
無眼耳鼻舌身意。無色聲香味觸法。
無眼界。乃至無意識界。
無無明。亦無無明盡。乃至無老死。亦無老死盡。
無苦集滅道。無智亦無得。以無所得故。
菩提薩埵。依般若波羅蜜多故。
心無罣礙。無罣礙故。無有恐怖。
遠離顛倒夢想。究竟涅槃。
三世諸佛。依般若波羅蜜多故。
得阿耨多羅三藐三菩提。
故知般若波羅蜜多。是大神咒。是大明咒。
是無上咒。是無等等咒。能除一切苦。真實不虛。
故說般若波羅蜜多咒。即說咒曰。
揭諦揭諦　波羅揭諦　波羅僧揭諦　菩提薩婆訶。




"""
        case .sad:
            return """





南無喝囉怛那哆囉夜耶南無阿唎耶
婆盧羯帝爍缽囉耶菩提薩埵婆耶
摩訶薩埵婆耶摩訶迦盧尼迦耶唵
薩皤囉罰曳數怛那怛寫
南無悉吉利埵伊蒙阿唎耶
婆盧吉帝室佛囉楞馱婆南無那囉謹墀
醯唎摩訶皤哆沙咩薩婆阿他豆輸朋阿逝孕
薩婆薩哆那摩婆薩多那摩婆伽
摩罰特豆怛侄他唵阿婆盧醯
盧迦帝迦羅帝夷醯唎
摩訶菩提薩埵薩婆薩婆摩囉摩囉
摩醯摩醯唎馱孕俱盧俱盧羯蒙
度盧度盧罰闍耶帝
摩訶罰闍耶帝陀囉陀囉地唎尼室佛囉耶
遮囉遮囉麼麼罰摩囉穆帝隸
伊醯伊醯室那室那阿囉嘇佛囉舍利
罰娑罰嘇佛囉舍耶
呼盧呼盧摩囉呼盧呼盧醯利
娑囉娑囉悉唎悉唎蘇嚧蘇嚧
菩提夜菩提夜菩馱夜菩馱夜彌帝利夜
那囉謹墀地利瑟尼那婆夜摩那娑婆訶
悉陀夜娑婆訶
摩訶悉陀夜娑婆訶
悉陀喻藝室皤囉夜娑婆訶
那囉謹墀娑婆訶
摩囉那囉娑婆訶
悉囉僧阿穆佉耶娑婆訶
娑婆摩訶阿悉陀夜娑婆訶
者吉囉阿悉陀夜娑婆訶
波陀摩羯悉陀夜娑婆訶
那囉謹墀皤伽囉耶娑婆訶
摩婆利勝羯囉夜娑婆訶
南無喝囉怛那哆囉夜耶南無阿利耶
婆嚧吉帝爍皤囉夜娑婆訶
唵悉殿都漫多囉跋陀耶娑婆訶





"""
        case .water:
            return """





唵 嚩 悉 波 羅 摩 尼 莎 訶
Ong wa xi bo luo mo ni suo he

郡亭枕上望海潮　　白衣大士對我曰
南海聞得妙音住　　發願速種智慧因

南海證得清靜地　　須往乘坐般若船
我今施咒于神水　　駕鯉十裡遊蓮座

起持掌心卍標轉　　銀川懸河三千尺
偶登龍頭上寶觀　　三符降下南天門





"""
        case .dead:
            return """





南無阿彌多婆夜　ná mó ē mí duō pó yè

哆他伽多夜　　　dǎ tā jiā duō yè

哆地夜他　　　　dǎ dì yè tā

阿彌利都婆毗　　ē mí lì dū pó pí

阿彌利哆　　　　ē mí lì dǎ

悉耽婆毗　　　　xī dān pó pí

阿彌唎哆　　　　ē mí lì dǎ

毗迦蘭帝　　　　pí jiā lán dì

阿彌唎哆　　　　ē mí lì dǎ

毗迦蘭多　　　　pí jiā lán duō

伽彌膩　　　　　jiā mí nì

伽伽楉　　　　　jiā jiā nà

枳多迦利　　　　zhǐ duō jiā lì

娑婆訶　　　　　suō pó hē





"""
        case .sun:
            return """





南無勃陀瞿那迷　ná mó bó tuó qú nà mí  南無達摩莫訶低　ná mó dá mó mò hē dī  南無僧伽多夜泥　ná mó sēng qié duō yè ní  底哩部畢薩咄簷納摩　dǐ li bù bì sà duō da nà mó





"""
        case .moon:
            return """




深低帝屠蘇吒　shēn dī dì tú sū zhà  　阿若蜜帝烏都吒　à ruò mì dì wū dōu zhà  　深耆吒 波賴帝　shēn qí zhà bō lài dì  　耶彌若吒烏都吒 　Yē mí ruò zhà wū dōu zhà  　拘羅帝吒耆摩吒 　Jū luó dì zhà qí mó zhà  　沙婆訶 　shā pó hē





"""
        case .killHeart:
            return """




這是文殊菩薩增長智慧的咒語。又稱文殊菩薩心咒。 文殊心咒咒注音：ōng ā rā，bā zhā nà dǐ  梵文：Om Ara Pa Ca Na Dhih 藏文：Om Ara Pa Za Na Di 藏文：唵 阿 喇 巴 扎 納 德 中文：唵 阿 諾 巴 佳 呐 帝





"""
        case .yen:
            return """




　　嗡。啊拿咧。維夏達。懷喇。
　　乏及喇陀唎。盤達-盤達你。
　　乏及喇叭尼。怕都。
　　吽。勃魯姆。怕都。司乏哈。




"""
        case .da4:
            return """




　嗡，巴雜，嘿， 　　嗡，巴雜，詹雜， 　　摩訶嚕呵吶吽嘿。 　　ong　ba　zha　hei　 　　ong　ba　zha　zhan　zha　 　　mo　he　lu　he　na　hong　hei

"""
        case .monther:
            return """





南無颯哆喃 三藐三勃陀 俱胝南 怛姪他 唵 折隸 主隸 準提 娑婆訶





"""
        case .breakTrue:
            return """





「滅定業真言」的梵文
Om pramardane svāhā

中文一般音譯成：
唵，缽囉末鄰陀寧，娑婆訶。




"""
        case .fateDoMother:
            return """




《綠度母心咒》：
嗡。達咧。嘟達咧。嘟咧。梭哈。

（梵文：Oṃ Tāre Tuttāre Ture Svāhā）
漢字注音：ong, da lie, du da lie, du lie, suo ha




"""
        }
    }
    
    var soundName: String {
        switch self {
            
        case .heart:
            return "心經"
        case .sad:
            return "大悲咒"
        case .water:
            return "淨水咒"
        case .dead:
            return "往生淨土神咒"
        case .sun:
            return "日光菩薩咒"
        case .moon:
            return "月光菩薩咒"
        case .killHeart:
            return "文殊心咒"
        case .yen:
            return "楞嚴咒咒心"
        case .da4:
            return "大勢至菩薩心咒"
        case .monther:
            return "準提佛母心咒"
        case .breakTrue:
            return "滅定業真言"
        case .fateDoMother:
            return "綠度母心咒"
        }
        
    }
    
}

class IAPCenter: NSObject {
    
    static let shared = IAPCenter()
    
    var products = [SKProduct]()
    
    var productRequest: SKProductsRequest?
    
    var requestComplete: (([String])->())?
    
    var storeComplete: (()->())?
    
    let types: [ProductID] = [
        ProductID.heart,
        ProductID.sad,
        ProductID.water,
        ProductID.dead,
        ProductID.sun,
        ProductID.moon,
        ProductID.killHeart,
        ProductID.yen,
        ProductID.da4,
        ProductID.monther,
        ProductID.breakTrue,
        ProductID.fateDoMother
    ]
    
    
    //總共有多少購買項目
    func getProductIDs() -> [String] {
        
        return [
            ProductID.heart.id,
            ProductID.sad.id,
            ProductID.water.id,
            ProductID.dead.id,
            ProductID.sun.id,
            ProductID.moon.id,
            ProductID.killHeart.id,
            ProductID.yen.id,
            ProductID.da4.id,
            ProductID.monther.id,
            ProductID.breakTrue.id,
            ProductID.fateDoMother.id
        ]
    }
    
    func getProducts() {
        SKPaymentQueue.default().restoreCompletedTransactions()
        let productIds = getProductIDs()
        let productIdsSet = Set(productIds)
        productRequest = SKProductsRequest(productIdentifiers: productIdsSet)
        productRequest?.delegate = self
        productRequest?.start()
    }
    
    func buy(product: SKProduct) {
        if SKPaymentQueue.canMakePayments() {
            let payment = SKPayment(product: product)
            SKPaymentQueue.default().add(payment)
        } else {
            let scenes = UIApplication.shared.connectedScenes
            let windowScene = scenes.first as? UIWindowScene
            let window = windowScene?.windows.first
            if let controller = window?.rootViewController as? BaseViewController {
                controller.showSingleAlert(title: "提示",
                                           message: "你的帳號無法購買",
                                           confirmTitle: "OK",
                                           confirmAction: nil)
            }
        }
    }
    
    func restore() {
        SKPaymentQueue.default().restoreCompletedTransactions()
    }
    
    
}
extension IAPCenter: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        print("產品列表")
        if response.products.count != 0 {
            response.products.forEach {
                print($0.localizedTitle, $0.price, $0.localizedDescription)
            }
            self.products = response.products
            requestComplete?([])
        } else {
            self.products = response.products
            requestComplete?(response.invalidProductIdentifiers)
            print(response.invalidProductIdentifiers)
            print(response.description)
            print(response.debugDescription)
        }
        
        
        
    }
    
}

extension IAPCenter: SKPaymentTransactionObserver {
    
    func paymentQueue(_ queue: SKPaymentQueue, restoreCompletedTransactionsFailedWithError error: Error) {
        print(error.localizedDescription)
        
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        
        if let controller = window?.rootViewController as? BaseViewController {
            controller.showSingleAlert(title: "錯誤",
                                       message: error.localizedDescription,
                                       confirmTitle: "OK",
                                       confirmAction: nil)
        }
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        var iapedIDs = UserInfoCenter.shared.loadValue(.iaped) as? [String] ?? []
        
        transactions.forEach {
            
            print($0.payment.productIdentifier, $0.transactionState.rawValue)
            switch $0.transactionState {
            case .purchased:
                SKPaymentQueue.default().finishTransaction($0)
            case .failed:
                print($0.error ?? "")
                if ($0.error as? SKError)?.code != .paymentCancelled {
                    // show error
                }
                SKPaymentQueue.default().finishTransaction($0)
            case .restored:
                SKPaymentQueue.default().finishTransaction($0)
            case .purchasing, .deferred:
                break
            @unknown default:
                break
            }
            
            if $0.transactionState == .purchased ||  $0.transactionState == .restored {
                
                if !iapedIDs.contains($0.payment.productIdentifier) {
                    iapedIDs.append($0.payment.productIdentifier)
                }
                
            }
            
        }
        UserInfoCenter.shared.storeValue(.iaped, data: iapedIDs)
        self.storeComplete?()
    }
    
}
