import ProjectDescription

let settings = Settings.settings(
    base: [
        "ENABLE_USER_SCRIPT_SANDBOXING": "YES",
        "ASSETCATALOG_COMPILER_GENERATE_ASSET_SYMBOLS": "YES",
        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": "YES",
        "SWIFT_EMIT_LOC_STRINGS": "YES"
    ],
    defaultSettings: .recommended
)

let project = Project(
    name: "{{PRODUCT_NAME}}",
    settings: settings,
    targets: [
        .target(
            name: "{{PRODUCT_NAME}}",
            destinations: [.mac],
            product: .app,
            bundleId: "{{BUNDLE_PREFIX}}.{{PRODUCT_NAME}}",
            deploymentTargets: .macOS("{{DEPLOYMENT_TARGET}}"),
            infoPlist: .extendingDefault(with: [
                "CFBundleDisplayName": "{{PRODUCT_NAME}}"
            ]),
            sources: ["Sources/**"],
            resources: []
        ),
        .target(
            name: "{{PRODUCT_NAME}}Tests",
            destinations: [.mac],
            product: .unitTests,
            bundleId: "{{BUNDLE_PREFIX}}.{{PRODUCT_NAME}}Tests",
            deploymentTargets: .macOS("{{DEPLOYMENT_TARGET}}"),
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [.target(name: "{{PRODUCT_NAME}}")]
        )
    ]
)
