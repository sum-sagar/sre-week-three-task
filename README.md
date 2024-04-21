
Identifying TOIL:
Toil is a task that meets one or more of the following characteristics:
Manual,Repetitive,Automatable,Reactive,Lacks enduring value
********************************************************************************************************************************************************************************************************************************************************
Measuring TOIL:
Once you’ve identified the work being done, how do you determine if it’s too much? 
It’s pretty simple: Regularly (we find monthly or quarterly to be a good interval), compute an estimate of how much time is being spent on various types of work.
Look for patterns or trends in your tickets, surveys, and on-call incident response, and prioritize based on the aggregate human time spent.
Tools to Measure KPI's and metrics for the same: Kibana, Grafana,
********************************************************************************************************************************************************************************************************************************************************

Automation: 
Using Automation at different DevOps Stages to mitigate toil
Automated Incident Response : SREs can set up automated scripts or bots that respond to specific types of incidents. For instance, if a service goes down, an automated script can attempt a predefined set of recovery actions before alerting a human.
Capacity Planning and Scaling: Scripts can be set up to monitor resource usage and automatically scale services up or down based on demand.
Configuration Management:Configuration changes can be propagated to all relevant servers or services automatically, without manual intervention.
Database Backups and Restorations:Regular database backups can be scheduled and executed automatically. In case of data corruption or loss, restoration processes can be initiated automatically.
Software Deployments:Deployments can be triggered automatically after a code merge, ensuring that new features or fixes reach users promptly.
Monitoring and Alerting:Automated monitoring tools can watch system health and performance metrics, triggering alerts or corrective actions when anomalies are detected.

Tools used to store time series database:InfluxDB, KairosDB, Prometheus , ClickHouse
Tools Used: Terraform,Puppet, Ansible, Vagrant, Google Cloud Deployment Manager, AWS Cloud Formation, Azure Resource Manager,Chef,Vagrant, Spacelift.

********************************************************************************************************************************************************************************************************************************************************

CI/CD: 
Continuous monitoring can be integrated into the CI/CD pipeline to catch potential issues before they reach production, reducing the number of incidents.
Any changes to configuration can be tested in a staging environment before being deployed to production, catching potential issues.
Any changes to the backup process can be continuously integrated and deployed after thorough testing.
The pipeline ensures that code is built, tested, and deployed in a consistent manner. Automated tests in the pipeline reduce the chances of faulty code reaching production.
Integration of monitoring tools into the CI/CD pipeline ensures that any potential issues with new code are flagged before deployment.
********************************************************************************************************************************************************************************************************************************************************


End to End tools to reduce toil:
eg: Shoreline, Sensu
 
