job "devops-intern-job" {
  datacenters = ["dc1"]
  type        = "service"

  group "app-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "python:3.9-slim"
        command = "python"
        args = ["-c", "print('Hello form Nomad!')"]
      }

      resources {
        cpu    = 100 # 100 MHz
        memory = 64  # 64 MB
      }
    }
  }
}