job "devops-intern-job" {
  datacenters = ["dc1"]
  type        = "service"

  group "app-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "devops-final-app:latest"
        image_pull_timeout = "15m"
      }

      resources {
        cpu    = 100 # 100 MHz
        memory = 64  # 64 MB
      }
    }
  }
}