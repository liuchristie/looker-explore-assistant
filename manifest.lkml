project_name: "looker-explore-assistant"

application: explore_assistant {
  label: "Explore Assistant"
  url: "https://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    core_api_methods: ["lookml_model_explore", "me"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: [
      "https://developers.generativeai.google/*",
      "https://cloud.google.com",
      "https://console.google.com"]
    local_storage: yes
    external_api_urls: ["https://us-central1-appbuilder-388321.cloudfunctions.net/explore-assistant-endpoint--us-central1"]
  }
}
