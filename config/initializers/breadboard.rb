
Breadboard::Config.reset
Breadboard::Config.env { 
  Rails.env.to_s || DeploymentMetadata.deployment_env
}

Breadboard.configure do
  theme do
    local  "http://localhost:3000"
    development "http://localhost:3000"
  end

  post do
    local  "http://localhost:3000"
    development "http://localhost:3000"
  end  
end
