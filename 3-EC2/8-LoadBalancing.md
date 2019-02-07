# Load Balancers theory

- Load balancers balance the load across web servers
- there are 3 types of load balancers in AWS:
  - Application Load Balancers
    - Load Balancing between (e.g.) HTTP and HTTPS traffic
    - Application aware
    - Intelligent, can make advanced routing decisions
    - send specific requests to specific web servers
    - Operates at Layer 7
  - Network Load balancers
    - balances TCP traffic where extreme performance is required
    - can handle millions of requests per second with low latency
    - Operates at Layer 4
  - Classic Load Balancers
    - Legacy Elastic Load balancers
    - Balances HTTP/S applications and uses Layer 7 specific features like X-Forwarded headers and sessions
    - You can also use Layer 4 load balancing for applications that rely strictly on TCP

- Load Balancer Error 504 -> LB is still there but has problems communicating with the application (Gateway timeout)
- X-Forwarded header: client IP address as the application will only see the load balancer as the source of the requests

# Tips
- 3 types of Load Balancers:
  - Application
  - Network
  - Classic (ELB)
- 504 means the gateway has timed out. Application is not responding to the LB
  - application trouble shooting
- X-Forwarded header contains client address
