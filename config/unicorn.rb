# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "~/apps/demo_01"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "~/apps/demo_01/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "~/apps/demo_01/log/unicorn.log"
stdout_path "/apps/demo_01/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.[demo_01].sock"
listen "/tmp/unicorn.demo_01.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30
