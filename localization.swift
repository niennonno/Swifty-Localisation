extension String {
    var aLocalized: String {
        
        let aBundlePath = Bundle.main.path(forResource: NSLocale.preferredLanguages[0], ofType: "lproj")
        let aLanguageBundlePath = Bundle(path: aBundlePath!)
        
        return NSLocalizedString(self, tableName: nil, bundle: aLanguageBundlePath!, value: self, comment: "")
    }
}
