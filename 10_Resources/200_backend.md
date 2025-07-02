#backend

<iframe src="https://roadmap.sh/backend"; height="1000"; width="1000";></iframe>


## Relational Databases

Relational databases are a type of database management system (DBMS) that organizes data into structured tables with rows and columns, using a schema to define data relationships and constraints. They employ Structured Query Language (SQL) for querying and managing data, supporting operations such as data retrieval, insertion, updating, and deletion. Relational databases enforce data integrity through keys (primary and foreign) and constraints (such as unique and not-null), and they are designed to handle complex queries, transactions, and data relationships efficiently. Examples of relational databases include MySQL, PostgreSQL, and Oracle Database. They are commonly used for applications requiring structured data storage, strong consistency, and complex querying capabilities.

- [courseDatabases and SQL](https://www.edx.org/course/databases-5-sql)
- [articleRelational Databases](https://www.ibm.com/cloud/learn/relational-databases)
- [article51 Years of Relational Databases](https://learnsql.com/blog/codd-article-databases/)
- [articleIntro To Relational Databases](https://www.udacity.com/course/intro-to-relational-databases--ud197)
- [videoWhat is Relational Database](https://youtu.be/OqjJjpjDRLc)
- [feedExplore top posts about Backend Development](https://app.daily.dev/tags/backend?ref=roadmapsh)

### PostgreSQL

PostgreSQL is an advanced, open-source relational database management system (RDBMS) known for its robustness, extensibility, and standards compliance. It supports a wide range of data types and advanced features, including complex queries, foreign keys, and full-text search. PostgreSQL is highly extensible, allowing users to define custom data types, operators, and functions. It supports ACID (Atomicity, Consistency, Isolation, Durability) properties for reliable transaction processing and offers strong support for concurrency and data integrity. Its capabilities make it suitable for various applications, from simple web apps to large-scale data warehousing and analytics solutions.

- [roadmapVisit Dedicated PostgreSQL DBA Roadmap](https://roadmap.sh/postgresql-dba)
- [officialOfficial Website](https://www.postgresql.org/)
- [articleLearn PostgreSQL - Full Tutorial for Beginners](https://www.postgresqltutorial.com/)
- [videoPostgreSQL in 100 Seconds](https://www.youtube.com/watch?v=n2Fluyr3lbc)
- [videoPostgres tutorial for Beginners](https://www.youtube.com/watch?v=SpfIwlAYaKk)
- [feedExplore top posts about PostgreSQL](https://app.daily.dev/tags/postgresql?ref=roadmapsh)

## APIs

An API (Application Programming Interface) is a set of defined rules and protocols that allow different software applications to communicate and interact with each other. It provides a standardized way for developers to access and manipulate the functionalities or data of a service, application, or platform without needing to understand its internal workings. APIs can be public or private and are commonly used to integrate disparate systems, facilitate third-party development, and enable interoperability between applications. They typically include endpoints, request methods (like GET, POST, PUT), and data formats (like JSON or XML) to interact with.

- [articleWhat is an API?](https://aws.amazon.com/what-is/api/)
- [videoWhat is an API (in 5 minutes)](https://www.youtube.com/watch?v=ByGJQzlzxQg)
- [feeddaily.dev API Feed](https://app.daily.dev/tags/rest-api)

### REST

A REST API (Representational State Transfer Application Programming Interface) is an architectural style for designing networked applications. It relies on standard HTTP methods (GET, POST, PUT, DELETE) to interact with resources, which are represented as URIs (Uniform Resource Identifiers). REST APIs are stateless, meaning each request from a client to a server must contain all the information needed to understand and process the request. They use standard HTTP status codes to indicate the outcome of requests and often communicate in formats like JSON or XML. REST APIs are widely used due to their simplicity, scalability, and ease of integration with web services and applications.

- [articleWhat is a REST API?](https://www.redhat.com/en/topics/api/what-is-a-rest-api)
- [articleRoy Fieldings dissertation chapter, Representational State Transfer (REST)](https://www.ics.uci.edu/~fielding/pubs/dissertation/rest_arch_style.htm)
- [articleLearn REST: A RESTful Tutorial](https://restapitutorial.com/)
- [videoWhat is a REST API?](https://www.youtube.com/watch?v=-mN3VyJuCjM)
- [feedExplore top posts about REST API](https://app.daily.dev/tags/rest-api?ref=roadmapsh)

### JSON APIs

JSON or JavaScript Object Notation is an encoding scheme that is designed to eliminate the need for an ad-hoc code for each application to communicate with servers that communicate in a defined way. JSON API module exposes an implementation for data stores and data structures, such as entity types, bundles, and fields.

- [officialJSON API](https://jsonapi.org/)
- [articleWhat is JSON API?](https://medium.com/@niranjan.cs/what-is-json-api-3b824fba2788)
- [videoJSON API: Explained in 4 minutes](https://www.youtube.com/watch?v=N-4prIh7t38)

## Caching

Caching is a technique used in computing to store and retrieve frequently accessed data quickly, reducing the need to fetch it from the original, slower source repeatedly. It involves keeping a copy of data in a location that's faster to access than its primary storage. Caching can occur at various levels, including browser caching, application-level caching, and database caching. It significantly improves performance by reducing latency, decreasing network traffic, and lowering the load on servers or databases. Common caching strategies include time-based expiration, least recently used (LRU) algorithms, and write-through or write-back policies. While caching enhances speed and efficiency, it also introduces challenges in maintaining data consistency and freshness. Effective cache management is crucial in balancing performance gains with the need for up-to-date information in dynamic systems.

- [articleWhat is Caching - AWS](https://aws.amazon.com/caching/)
- [articleCaching - Cloudflare](https://www.cloudflare.com/learning/cdn/what-is-caching/)

### Redis

Redis is an open-source, in-memory data structure store known for its speed and versatility. It supports various data types, including strings, lists, sets, hashes, and sorted sets, and provides functionalities such as caching, session management, real-time analytics, and message brokering. Redis operates as a key-value store, allowing for rapid read and write operations, and is often used to enhance performance and scalability in applications. It supports persistence options to save data to disk, replication for high availability, and clustering for horizontal scaling. Redis is widely used for scenarios requiring low-latency access to data and high-throughput performance.

- [roadmapVisit Dedicated Redis Roadmap](https://roadmap.sh/redis)
- [courseRedis Crash Course](https://www.youtube.com/watch?v=XCsS_NVAa1g)
- [officialRedis](https://redis.io/)
- [officialRedis Documentation](https://redis.io/docs/latest/)
- [videoRedis in 100 Seconds](https://www.youtube.com/watch?v=G1rOthIU-uo)
- [feedExplore top posts about Redis](https://app.daily.dev/tags/redis?ref=roadmapsh)

### Server side

Server-side caching is a technique used to improve application performance by storing frequently accessed data in memory on the server, reducing the need for repeated data retrieval or computation. This approach helps to speed up response times and reduce the load on databases and other backend services. Common methods include caching database query results, HTML fragments, and API responses. Popular server-side caching tools and technologies include Redis, Memcached, and built-in caching mechanisms in web frameworks. By efficiently managing and serving cached content, server-side caching enhances scalability and responsiveness of applications.

- [articleServer-side caching and Client-side caching](https://www.codingninjas.com/codestudio/library/server-side-caching-and-client-side-caching)
- [articleCaching strategies](https://medium.com/@genchilu/cache-strategy-in-backend-d0baaacd2d79)
- [articleLocal vs distributed](https://redis.io/glossary/distributed-caching/)
- [feedExplore top posts about Web Development](https://app.daily.dev/tags/webdev?ref=roadmapsh)

### CDN (Content Delivery Network)

A Content Delivery Network (CDN) service aims to provide high availability and performance improvements of websites. This is achieved with fast delivery of website assets and content typically via geographically closer endpoints to the client requests.

Traditional commercial CDNs (Amazon CloudFront, Akamai, CloudFlare and Fastly) provide servers across the globe which can be used for this purpose. Serving assets and contents via a CDN reduces bandwidth on website hosting, provides an extra layer of caching to reduce potential outages and can improve website security as well

- [articleCloudFlare - What is a CDN? | How do CDNs work?](https://www.cloudflare.com/en-ca/learning/cdn/what-is-a-cdn/)
- [articleAWS - CDN](https://aws.amazon.com/what-is/cdn/)
- [videoWhat is Cloud CDN?](https://www.youtube.com/watch?v=841kyd_mfH0)
- [videoWhat is a CDN and how does it work?](https://www.youtube.com/watch?v=RI9np1LWzqw)

### Client Side Caching

Client-side caching is a technique where web browsers or applications store data locally on the user's device to improve performance and reduce server load. It involves saving copies of web pages, images, scripts, and other resources on the client's system for faster access on subsequent visits. Modern browsers implement various caching mechanisms, including HTTP caching (using headers like Cache-Control and ETag), service workers for offline functionality, and local storage APIs. Client-side caching significantly reduces network traffic and load times, enhancing user experience, especially on slower connections. However, it requires careful management to balance improved performance with the need for up-to-date content. Developers must implement appropriate cache invalidation strategies and consider cache-busting techniques for critical updates. Effective client-side caching is crucial for creating responsive, efficient web applications while minimizing server resource usage.

- [articleClient Side Caching](https://redis.io/docs/latest/develop/use/client-side-caching/)
- [videoEverything you need to know about HTTP Caching](https://www.youtube.com/watch?v=HiBDZgTNpXY)

## Web Security Knowledge

Web security involves protecting web applications from threats and vulnerabilities to ensure data confidentiality, integrity, and availability. Key practices include strong authentication and authorization mechanisms, using encryption (e.g., SSL/TLS) for secure data transmission, and validating user inputs to prevent attacks like SQL injection and cross-site scripting (XSS). Secure coding practices, effective session management, and regular updates and patching are crucial for maintaining security. Additionally, ongoing security testing, including penetration testing and vulnerability assessments, helps identify and address potential weaknesses, safeguarding applications and maintaining user trust.

- [OpenSourceOWASP Web Application Security Testing Checklist](https://github.com/0xRadi/OWASP-Web-Checklist)
- [articleWhy HTTPS Matters](https://developers.google.com/web/fundamentals/security/encrypt-in-transit/why-https)
- [video7 Security Risks and Hacking Stories for Web Developers](https://www.youtube.com/watch?v=4YOpILi9Oxs)
- [feedExplore top posts about Security](https://app.daily.dev/tags/security?ref=roadmapsh)

### MD5

MD5 (Message-Digest Algorithm 5) is a widely used cryptographic hash function that produces a 128-bit hash value, typically represented as a 32-character hexadecimal number. It was designed to provide a unique identifier for data by generating a fixed-size output (the hash) for any input. While MD5 was once popular for verifying data integrity and storing passwords, it is now considered cryptographically broken and unsuitable for security-sensitive applications due to vulnerabilities that allow for collision attacks (where two different inputs produce the same hash). As a result, MD5 has largely been replaced by more secure hash functions like SHA-256.

- [articleWikipedia - MD5](https://en.wikipedia.org/wiki/MD5)
- [articleWhat is MD5?](https://www.techtarget.com/searchsecurity/definition/MD5)
- [articleWhy is MD5 not safe?](https://infosecscout.com/why-md5-is-not-safe/)
- [videoHow the MD5 hash function works](https://www.youtube.com/watch?v=5MiMK45gkTY)

### SHA family

SHA (Secure Hash Algorithm) is a family of cryptographic hash functions designed to generate a fixed-size hash value from variable-sized input data, ensuring data integrity and security. SHA functions are used for tasks such as verifying data integrity, storing passwords securely, and creating digital signatures. The SHA family includes several versions, such as SHA-1, SHA-2, and SHA-3. SHA-1 produces a 160-bit hash value but is now considered weak due to vulnerabilities, while SHA-2, with hash sizes of 224, 256, 384, and 512 bits, offers stronger security. SHA-3 is the latest member, providing additional security features and flexibility.

- [articleWhat is SHA?](https://www.encryptionconsulting.com/education-center/what-is-sha/)
- [videoSHA: Secure Hashing Algorithm](https://www.youtube.com/watch?v=DMtFhACPnTY)

### Scrypt

scrypt is a key derivation function designed to be computationally intensive and memory-hard to resist brute-force attacks and hardware-based attacks, such as those using GPUs or ASICs. It was developed to provide secure password hashing by making it difficult and costly for attackers to perform large-scale attacks. scrypt combines a hash function with a large amount of memory usage and a CPU-intensive computation process, which ensures that even if an attacker can perform many computations in parallel, the memory requirements make such attacks impractical. It is commonly used in cryptographic applications, including secure password storage and cryptocurrency mining.

- [officialsCrypt Website](https://scrypt.io/)
- [articlesCrypt: A Beginner’s Guide](https://medium.com/@yusufedresmaina/scrypt-a-beginners-guide-cf1aecf8b010)
- [articleWikipedia - scrypt](https://en.wikipedia.org/wiki/Scrypt)

### Bcrypt

Bcrypt is a password-hashing function designed to securely hash passwords for storage in databases. Created by Niels Provos and David Mazières, it's based on the Blowfish cipher and incorporates a salt to protect against rainbow table attacks. Bcrypt's key feature is its adaptive nature, allowing for the adjustment of its cost factor to make it slower as computational power increases, thus maintaining resistance against brute-force attacks over time. It produces a fixed-size hash output, typically 60 characters long, which includes the salt and cost factor. Bcrypt is widely used in many programming languages and frameworks due to its security strength and relative ease of implementation. Its deliberate slowness in processing makes it particularly effective for password storage, where speed is not a priority but security is paramount.

- [OpenSourcebcrypt](https://github.com/kelektiv/node.bcrypt.js)
- [articleUnderstanding bcrypt](https://auth0.com/blog/hashing-in-action-understanding-bcrypt/)
- [videobcrypt explained](https://www.youtube.com/watch?v=AzA_LTDoFqY)

### SSL/TLS

Secure Sockets Layer (SSL) and Transport Layer Security (TLS) are cryptographic protocols used to provide security in internet communications. These protocols encrypt the data that is transmitted over the web, so anyone who tries to intercept packets will not be able to interpret the data. One difference that is important to know is that SSL is now deprecated due to security flaws, and most modern web browsers no longer support it. But TLS is still secure and widely supported, so preferably use TLS.

- [articleWikipedia - SSL/TLS](https://en.wikipedia.org/wiki/Transport_Layer_Security)
- [articleCloudflare - What is SSL?](https://www.cloudflare.com/learning/ssl/what-is-ssl/)
- [videoSSL, TLS, HTTPS Explained](https://www.youtube.com/watch?v=j9QmMEWmcfo)

### Server Security

Server security involves protecting servers from threats and vulnerabilities to ensure the confidentiality, integrity, and availability of the data and services they manage. Key practices include:

1. **Patch Management**: Regularly updating software and operating systems to fix vulnerabilities.
2. **Access Control**: Implementing strong authentication mechanisms and restricting access to authorized users only.
3. **Firewalls and Intrusion Detection**: Using firewalls to block unauthorized access and intrusion detection systems to monitor and respond to suspicious activities.
4. **Encryption**: Encrypting data both in transit and at rest to protect sensitive information from unauthorized access.
5. **Security Hardening**: Configuring servers with minimal services and features, applying security best practices to reduce the attack surface.
6. **Regular Backups**: Performing regular backups to ensure data can be restored in case of loss or corruption.
7. **Monitoring and Logging**: Continuously monitoring server activity and maintaining logs for auditing and detecting potential security incidents.

- [articleWhat is a hardened server?](https://www.sophos.com/en-us/cybersecurity-explained/what-is-server-hardening)
- [video10 Tips for Hardening your Linux Servers](https://www.youtube.com/watch?v=Jnxx_IAC0G4)

## Testing

Testing is a systematic process used to evaluate the functionality, performance, and quality of software or systems to ensure they meet specified requirements and standards. It involves various methodologies and levels, including unit testing (testing individual components), integration testing (verifying interactions between components), system testing (assessing the entire system's behavior), and acceptance testing (confirming it meets user needs). Testing can be manual or automated and aims to identify defects, validate that features work as intended, and ensure the system performs reliably under different conditions. Effective testing is critical for delivering high-quality software and mitigating risks before deployment.

- [articleWhat is Software Testing?](https://www.guru99.com/software-testing-introduction-importance.html)
- [articleTesting Pyramid](https://www.browserstack.com/guide/testing-pyramid-for-test-automation)

### Integration Testing

Integration testing focuses on verifying the interactions between different components or modules of a software system to ensure they work together as expected. It comes after unit testing and tests how modules communicate with each other, often using APIs, databases, or third-party services. The goal is to catch issues related to the integration points, such as data mismatches, protocol errors, or misconfigurations. Integration tests help ensure that independently developed components can function seamlessly as part of a larger system, making them crucial for identifying bugs that wouldn't surface in isolated unit tests.

- [articleIntegration Testing](https://www.guru99.com/integration-testing.html)
- [articleHow to Integrate and Test Your Tech Stack](https://thenewstack.io/how-to-integrate-and-test-your-tech-stack/)
- [videoWhat is Integration Testing?](https://www.youtube.com/watch?v=kRD6PA6uxiY)
- [feedExplore top posts about Testing](https://app.daily.dev/tags/testing?ref=roadmapsh)

### Unit Testing

Unit testing is a software testing method where individual components or units of a program are tested in isolation to ensure they function correctly. This approach focuses on verifying the smallest testable parts of an application, such as functions or methods, by executing them with predefined inputs and comparing the results to expected outcomes. Unit tests are typically automated and written by developers during the coding phase to catch bugs early, facilitate code refactoring, and ensure that each unit of code performs as intended. By isolating and testing each component, unit testing helps improve code reliability and maintainability.

- [articleUnit Testing](https://en.wikipedia.org/wiki/Unit_testing)
- [articleWhat is Unit Testing?](https://www.guru99.com/unit-testing-guide.html)
- [videoWhat is Unit Testing?](https://www.youtube.com/watch?v=W2KOSaetWBk)

### Functional Testing

Functional testing is where software is tested to ensure functional requirements are met. Usually, it is a form of black box testing in which the tester has no understanding of the source code; testing is performed by providing input and comparing expected/actual output. It contrasts with non-functional testing, which includes performance, load, scalability, and penetration testing.

- [articleWhat is Functional Testing?](https://www.guru99.com/functional-testing.html)
- [videoFunctional Testing vs Non-Functional Testing](https://www.youtube.com/watch?v=NgQT7miTP9M)

## CI/CD

CI/CD (Continuous Integration/Continuous Delivery) is a set of practices and tools in software development that automate the process of building, testing, and deploying code changes. Continuous Integration involves frequently merging code changes into a central repository, where automated builds and tests are run. Continuous Delivery extends this by automatically deploying all code changes to a testing or staging environment after the build stage. Some implementations include Continuous Deployment, where changes are automatically released to production. CI/CD pipelines typically involve stages like code compilation, unit testing, integration testing, security scans, and deployment. This approach aims to improve software quality, reduce time to market, and increase development efficiency by catching and addressing issues early in the development cycle.

- [articleWhat is CI/CD?](https://about.gitlab.com/topics/ci-cd/)
- [articleA Primer: Continuous Integration and Continuous Delivery (CI/CD)](https://thenewstack.io/a-primer-continuous-integration-and-continuous-delivery-ci-cd/)
- [articleArticles about CI/CD](https://thenewstack.io/category/ci-cd/)
- [videoDevOps CI/CD Explained in 100 Seconds](https://www.youtube.com/watch?v=scEDHsr3APg)
- [videoAutomate your Workflows with GitHub Actions](https://www.youtube.com/watch?v=nyKZTKQS_EQ)
- [feedExplore top posts about CI/CD](https://app.daily.dev/tags/cicd?ref=roadmapsh)

## Databases

A database is a collection of useful data of one or more related organizations structured in a way to make data an asset to the organization. A database management system is a software designed to assist in maintaining and extracting large collections of data in a timely fashion.

- [articleOracle: What is a Database?](https://www.oracle.com/database/what-is-database/)
- [articlePrisma.io: What are Databases?](https://www.prisma.io/dataguide/intro/what-are-databases)
- [feedExplore top posts about Backend Development](https://app.daily.dev/tags/backend?ref=roadmapsh)

#### ORMs

Object-Relational Mapping (ORM) is a programming technique that allows developers to interact with a relational database using object-oriented programming concepts. ORM frameworks map database tables to classes and rows to objects, enabling developers to perform database operations through objects rather than writing raw SQL queries. This abstraction simplifies data manipulation and improves code maintainability by aligning database interactions with the application's object model. ORM tools handle the translation between objects and database schemas, manage relationships, and often provide features like lazy loading and caching. Popular ORM frameworks include Hibernate for Java, Entity Framework for .NET, and SQLAlchemy for Python.

- [articleWhat is an ORM, how does it work, and how should I use one?](https://stackoverflow.com/a/1279678)
- [articleWhat is an ORM](https://www.freecodecamp.org/news/what-is-an-orm-the-meaning-of-object-relational-mapping-database-tools/)
- [videoWhy Use an ORM?](https://www.youtube.com/watch?v=vHt2LC1EM3Q)

### ACID

ACID is an acronym representing four key properties that guarantee reliable processing of database transactions. It stands for Atomicity, Consistency, Isolation, and Durability. Atomicity ensures that a transaction is treated as a single, indivisible unit that either completes entirely or fails completely. Consistency maintains the database in a valid state before and after the transaction. Isolation ensures that concurrent transactions do not interfere with each other, appearing to execute sequentially. Durability guarantees that once a transaction is committed, it remains so, even in the event of system failures. These properties are crucial in maintaining data integrity and reliability in database systems, particularly in scenarios involving multiple, simultaneous transactions or where data accuracy is critical, such as in financial systems or e-commerce platforms.

- [articleWhat is ACID Compliant Database?](https://retool.com/blog/whats-an-acid-compliant-database/)
- [articleWhat is ACID Compliance?: Atomicity, Consistency, Isolation](https://fauna.com/blog/what-is-acid-compliance-atomicity-consistency-isolation)
- [videoACID Explained: Atomic, Consistent, Isolated & Durable](https://www.youtube.com/watch?v=yaQ5YMWkxq4)

### Transactions

In database systems, a transaction is a series of operations that are executed as a single, atomic unit to ensure data integrity and consistency. Transactions adhere to the ACID properties: Atomicity ensures all operations complete successfully or none are applied; Consistency maintains the database's valid state; Isolation prevents transactions from interfering with each other; and Durability guarantees that once a transaction is committed, its changes are permanent. These properties collectively ensure that databases handle concurrent operations reliably and maintain accurate and consistent data even in the face of failures.

- [articleWhat are Transactions?](https://fauna.com/blog/database-transaction)
- [videoWhat is a Database transaction?](https://www.youtube.com/watch?v=wHUOeXbZCYA)
- [videoACID Properties in Databases With Examples](https://www.youtube.com/watch?v=GAe5oB742dw)

### N plus one problem

The N+1 problem occurs in database querying when an application performs a query to retrieve a list of items and then issues additional queries to fetch related data for each item individually. This often results in inefficiencies and performance issues because the number of queries issued grows proportionally with the number of items retrieved. For example, if an application retrieves 10 items and then performs an additional query for each item to fetch related details, it ends up executing 11 queries (1 for the list and 10 for the details), leading to a total of 11 queries instead of 2. This can severely impact performance, especially with larger datasets. Solutions to the N+1 problem typically involve optimizing queries to use joins or batching techniques to retrieve related data in fewer, more efficient queries.

- [articleIn Detail Explanation of N+1 Problem](https://medium.com/doctolib/understanding-and-fixing-n-1-query-30623109fe89)
- [articleWhat is the N+1 Problem](https://planetscale.com/blog/what-is-n-1-query-problem-and-how-to-solve-it)
- [articleSolving N+1 Problem: For Java Backend Developers](https://dev.to/jackynote/solving-the-notorious-n1-problem-optimizing-database-queries-for-java-backend-developers-2o0p)
- [videoSQLite and the N+1 (no) problem](https://www.youtube.com/watch?v=qPfAQY_RahA)

### Database Normalization

Database normalization is the process of structuring a relational database in accordance with a series of so-called normal forms in order to reduce data redundancy and improve data integrity. It was first proposed by Edgar F. Codd as part of his relational model. Normalization entails organizing the columns (attributes) and tables (relations) of a database to ensure that their dependencies are properly enforced by database integrity constraints. It is accomplished by applying some formal rules either by a process of synthesis (creating a new database design) or decomposition (improving an existing database design).

- [articleWhat is Normalization in DBMS (SQL)? 1NF, 2NF, 3NF, BCNF Database with Example](https://www.guru99.com/database-normalization.html)
- [videoComplete guide to Database Normalization in SQL](https://www.youtube.com/watch?v=rBPQ5fg_kiY)
- [feedExplore top posts about Database](https://app.daily.dev/tags/database?ref=roadmapsh)

### Failure Modes

Database failure modes refer to the various ways in which a database system can malfunction or cease to operate correctly. These include hardware failures (like disk crashes or network outages), software bugs, data corruption, performance degradation due to overload, and inconsistencies in distributed systems. Common failure modes involve data loss, system unavailability, replication lag in distributed databases, and deadlocks. To mitigate these, databases employ strategies such as redundancy, regular backups, transaction logging, and failover mechanisms. Understanding potential failure modes is crucial for designing robust database systems with high availability and data integrity. It informs the implementation of fault tolerance measures, recovery procedures, and monitoring systems to ensure database reliability and minimize downtime in critical applications.

- [articleDatabase Failure Modes](https://ieeexplore.ieee.org/document/7107294/)

### Profiling Performance

Profiling performance involves analyzing a system or application's behavior to identify bottlenecks, inefficiencies, and areas for optimization. This process typically involves collecting detailed information about resource usage, such as CPU and memory consumption, I/O operations, and execution time of functions or methods. Profiling tools can provide insights into how different parts of the code contribute to overall performance, highlighting slow or resource-intensive operations. By understanding these performance characteristics, developers can make targeted improvements, optimize code paths, and enhance system responsiveness and scalability. Profiling is essential for diagnosing performance issues and ensuring that applications meet desired performance standards.

- [articleHow to Profile SQL Queries for Better Performance](https://servebolt.com/articles/profiling-sql-queries/)
- [videoPerformance Profiling](https://www.youtube.com/watch?v=MaauQTeGg2k)

### Migrations

Database migrations are a version-controlled way to manage and apply incremental changes to a database schema over time, allowing developers to modify the database structure (e.g., adding tables, altering columns) without affecting existing data. They ensure that the database evolves alongside application code in a consistent, repeatable manner across environments (e.g., development, testing, production), while maintaining compatibility with older versions of the schema. Migrations are typically written in SQL or a database-agnostic language, and are executed using migration tools like Liquibase, Flyway, or built-in ORM features such as Django or Rails migrations.

- [articleWhat are Database Migrations?](https://www.prisma.io/dataguide/types/relational/what-are-database-migrations)
- [videoDatabase Migrations for Beginners](https://www.youtube.com/watch?v=dJDBP7pPA-o)

## Scaling Databases

Scaling databases is the process of adapting them to handle more data and users efficiently. It's achieved by either upgrading existing hardware (vertical scaling) or adding more servers (horizontal scaling). Techniques like sharding and replication are key. This ensures databases continue to be a robust asset as they grow.

- [articleStrategies for Scaling Databases: A Comprehensive Guide](https://medium.com/@anil.goyal0057/strategies-for-scaling-databases-a-comprehensive-guide-b69cda7df1d3)
- [articleHorizontal vs. Vertical Scaling - How to Scale a Database](https://www.freecodecamp.org/news/horizontal-vs-vertical-scaling-in-database/)

### Database Indexes

Database indexes are data structures that improve the speed of data retrieval operations in a database management system. They work similarly to book indexes, providing a quick way to look up information based on specific columns or sets of columns. Indexes create a separate structure that holds a reference to the actual data, allowing the database engine to find information without scanning the entire table. While indexes significantly enhance query performance, especially for large datasets, they come with trade-offs. They increase storage space requirements and can slow down write operations as the index must be updated with each data modification. Common types include B-tree indexes for general purpose use, bitmap indexes for low-cardinality data, and hash indexes for equality comparisons. Proper index design is crucial for optimizing database performance, balancing faster reads against slower writes and increased storage needs.

- [articleWhat is a Database Index?](https://www.codecademy.com/article/sql-indexes)
- [videoDatabase Indexing Explained](https://www.youtube.com/watch?v=-qNSXK7s7_w)

## Architectural Patterns

An architectural pattern is a general, reusable solution to a commonly occurring problem in software architecture within a given context. The architectural patterns address various issues in software engineering, such as computer hardware performance limitations, high availability and minimization of a business risk.

- [article14 Architectural Patterns to know](https://www.redhat.com/architect/14-software-architecture-patterns)
- [article10 Common Software Architectural Patterns in a nutshell](https://theiotacademy.medium.com/10-common-software-architectural-patterns-in-a-nutshell-1b1f6cf5036b)

### Monolithic Apps

Monolithic applications are designed as a single, cohesive unit where all components—such as user interface, business logic, and data access—are tightly integrated and run as a single service. This architecture simplifies development and deployment since the entire application is managed and deployed together. However, it can lead to challenges with scalability, maintainability, and agility as the application grows. Changes to one part of the application may require redeploying the entire system, and scaling might necessitate duplicating the entire application rather than scaling individual components. Monolithic architectures can be suitable for smaller applications or projects with less complex requirements, but many organizations transition to microservices or modular architectures to address these limitations as they scale.

- [articlePattern: Monolithic Architecture](https://microservices.io/patterns/monolithic.html)
- [articleMonolithic Architecture - Advantages & Disadvantages](https://datamify.medium.com/monolithic-architecture-advantages-and-disadvantages-e71a603eec89)
- [videoMonolithic vs Microservice Architecture](https://www.youtube.com/watch?v=NdeTGlZ__Do)

### Microservices

Microservices is an architectural style that structures an application as a collection of loosely coupled, independently deployable services. Each microservice focuses on a specific business capability and communicates with others via lightweight protocols, typically HTTP or messaging queues. This approach allows for greater scalability, flexibility, and resilience, as services can be developed, deployed, and scaled independently. Microservices also facilitate the use of diverse technologies and languages for different components, and they support continuous delivery and deployment. However, managing microservices involves complexity in terms of inter-service communication, data consistency, and deployment orchestration.

- [articleWhat is Microservices?](https://smartbear.com/solutions/microservices/)
- [articleMicroservices 101](https://thenewstack.io/microservices-101/)
- [articleArticles about Microservices](https://thenewstack.io/category/microservices/)
- [videoMicroservices explained in 5 minutes](https://www.youtube.com/watch?v=lL_j7ilk7rc)
- [feedExplore top posts about Microservices](https://app.daily.dev/tags/microservices?ref=roadmapsh)

### SOA

Service-Oriented Architecture (SOA) is an architectural pattern where software components, known as services, are designed to be reusable, loosely coupled, and interact over a network. Each service is a self-contained unit that performs a specific business function and communicates with other services through standardized protocols and data formats, such as HTTP and XML. SOA enables organizations to build scalable, flexible, and interoperable systems by allowing services to be developed, deployed, and maintained independently. This approach promotes modularity, easier integration of disparate systems, and agility in adapting to changing business requirements.

- [articleWhat is SOA?](https://aws.amazon.com/what-is/service-oriented-architecture/)
- [articleReference Architecture Foundation for Service Oriented Architecture](http://docs.oasis-open.org/soa-rm/soa-ra/v1.0/soa-ra.html)
- [videoService Oriented Architecture (SOA) Simplified](https://www.youtube.com/watch?v=PA9RjHI463g)
- [feedExplore top posts about Architecture](https://app.daily.dev/tags/architecture?ref=roadmapsh)

### Serverless

Serverless computing is a cloud computing model where developers build and run applications without managing server infrastructure. In this model, cloud providers handle the server management, scaling, and maintenance tasks. Developers deploy code in the form of functions, which are executed in response to events or triggers, and are billed based on the actual usage rather than reserved capacity. This approach simplifies development by abstracting infrastructure concerns, enabling automatic scaling, and reducing operational overhead. Common serverless platforms include AWS Lambda, Google Cloud Functions, and Azure Functions, which support a range of event-driven applications and microservices.

- [articleServerless](https://www.ibm.com/cloud/learn/serverless)
- [articleAWS Services](https://aws.amazon.com/serverless/)
- [videoServerless Computing in 100 Seconds](https://www.youtube.com/watch?v=W_VV2Fx32_Y&ab_channel=Fireship)
- [feedExplore top posts about Serverless](https://app.daily.dev/tags/serverless?ref=roadmapsh)

### Twelve-Factor Apps

The Twelve-Factor App methodology is a set of principles for building modern, scalable, and maintainable web applications, particularly suited for cloud environments. It emphasizes best practices for developing applications in a way that facilitates portability, scalability, and ease of deployment. Key principles include:

1. **Codebase**: One codebase tracked in version control, with many deploys.
2. **Dependencies**: Explicitly declare and isolate dependencies.
3. **Config**: Store configuration in the environment.
4. **Backing Services**: Treat backing services as attached resources.
5. **Build, Release, Run**: Separate build and run stages.
6. **Processes**: Execute the app as one or more stateless processes.
7. **Port Binding**: Export services via port binding.
8. **Concurrency**: Scale out via the process model.
9. **Disposability**: Maximize robustness with fast startup and graceful shutdown.
10. **Dev/Prod Parity**: Keep development, staging, and production environments as similar as possible.
11. **Logs**: Treat logs as streams of events.
12. **Admin Processes**: Run administrative or management tasks as one-off processes.

- [articleThe Twelve-Factor App](https://12factor.net/)
- [articleAn illustrated guide to 12 Factor Apps](https://www.redhat.com/architect/12-factor-app)
- [videoEvery Developer NEEDS To Know 12-Factor App Principles](https://www.youtube.com/watch?v=FryJt0Tbt9Q)

## Design and Development Principles

Design and Development Principles are fundamental guidelines that inform the creation of software systems. Key principles include:

- SOLID (Single Responsibility, Open-Closed, Liskov Substitution, Interface Segregation, Dependency Inversion)
- DRY (Don't Repeat Yourself)
- KISS (Keep It Simple, Stupid)
- YAGNI (You Aren't Gonna Need It)
- Separation of Concerns
- Modularity
- Encapsulation
- Composition over Inheritance
- Loose Coupling and High Cohesion
- Principle of Least Astonishment

- [articleDesign Principles - Wikipedia](https://en.wikipedia.org/wiki/Design_principles)
- [articleDesign Principles - Microsoft](https://docs.microsoft.com/en-us/dotnet/standard/design-guidelines/index)

### GoF Design Patterns

The Gang of Four (GoF) Design Patterns are a collection of 23 foundational software design patterns that provide solutions to common object-oriented design problems. These patterns are grouped into three categories: _Creational_ (focused on object creation like Singleton and Factory), _Structural_ (focused on class and object composition like Adapter and Composite), and _Behavioral_ (focused on communication between objects like Observer and Strategy). Each pattern offers a proven template for addressing specific design challenges, promoting code reusability, flexibility, and maintainability across software systems.

- [articleGangs of Four (GoF) Design Patterns](https://www.digitalocean.com/community/tutorials/gangs-of-four-gof-design-patterns)
- [articleDesign Patterns for Humans](https://github.com/kamranahmedse/design-patterns-for-humans)
- [videoTutorial - Builder Pattern (Gang of Four Design Patterns Series)](https://www.youtube.com/watch?v=_sa2WlAFWQos)

### Domain-Driven Design

Domain-Driven Design (DDD) is a software development approach that focuses on creating a deep understanding of the business domain and using this knowledge to inform the design of software systems. It emphasizes close collaboration between technical and domain experts to develop a shared language (ubiquitous language) and model that accurately represents the core concepts and processes of the business. DDD promotes organizing code around business concepts (bounded contexts), using rich domain models to encapsulate business logic, and separating the domain logic from infrastructure concerns. Key patterns in DDD include entities, value objects, aggregates, repositories, and domain services. This approach aims to create more maintainable and flexible software systems that closely align with business needs and can evolve with changing requirements. DDD is particularly valuable for complex domains where traditional CRUD-based architectures may fall short in capturing the nuances and rules of the business.

- [articleDomain-Driven Design](https://redis.com/glossary/domain-driven-design-ddd/)
- [videoDomain Driven Design: What You Need To Know](https://www.youtube.com/watch?v=4rhzdZIDX_k)
- [feedExplore top posts about Domain-Driven Design](https://app.daily.dev/tags/domain-driven-design?ref=roadmapsh)

### Test Driven Development

Test driven development (TDD) is the process of writing tests for software's requirements which will fail until the software is developed to meet those requirements. Once those tests pass, then the cycle repeats to refactor code or develop another feature/requirement. In theory, this ensures that software is written to meet requirements in the simplest form, and avoids code defects.

- [articleWhat is Test Driven Development (TDD)?](https://www.guru99.com/test-driven-development.html)
- [articleTest-driven development](https://www.ibm.com/garage/method/practices/code/practice_test_driven_development/)
- [videoTest-Driven Development](https://www.youtube.com/watch?v=Jv2uxzhPFl4)
- [feedExplore top posts about TDD](https://app.daily.dev/tags/tdd?ref=roadmapsh)

## Containerization vs. Virtualization

Containerization and virtualization are both technologies for isolating and running multiple applications on shared hardware, but they differ significantly in approach and resource usage. Virtualization creates separate virtual machines (VMs), each with its own operating system, running on a hypervisor. This provides strong isolation but consumes more resources. Containerization, exemplified by Docker, uses a shared operating system kernel to create isolated environments (containers) for applications. Containers are lighter, start faster, and use fewer resources than VMs. They're ideal for microservices architectures and rapid deployment. Virtualization offers better security isolation and is suitable for running different operating systems on the same hardware. Containerization provides greater efficiency and scalability, especially for cloud-native applications. The choice between them depends on specific use cases, security requirements, and infrastructure needs.

- [articleContainerization vs. Virtualization: Everything you need to know](https://middleware.io/blog/containerization-vs-virtualization/)
- [videoVirtual Machine (VM) vs Docker](https://www.youtube.com/watch?v=a1M_thDTqmU)
- [feedExplore top posts about Containers](https://app.daily.dev/tags/containers?ref=roadmapsh)

### Docker

Docker is an open-source platform that automates the deployment, scaling, and management of applications using containerization technology. It enables developers to package applications with all their dependencies into standardized units called containers, ensuring consistent behavior across different environments. Docker provides a lightweight alternative to full machine virtualization, using OS-level virtualization to run multiple isolated systems on a single host. Its ecosystem includes tools for building, sharing, and running containers, such as Docker Engine, Docker Hub, and Docker Compose. Docker has become integral to modern DevOps practices, facilitating microservices architectures, continuous integration/deployment pipelines, and efficient resource utilization in both development and production environments.

- [roadmapVisit Dedicated Docker Roadmap](https://roadmap.sh/docker)
- [officialDocker Documentation](https://docs.docker.com/)
- [videoDocker Tutorial](https://www.youtube.com/watch?v=RqTEHSBrYFw)
- [videoDocker simplified in 55 seconds](https://youtu.be/vP_4DlOH1G4)
- [feedExplore top posts about Docker](https://app.daily.dev/tags/docker?ref=roadmapsh)

## Message Brokers

Message brokers are intermediaries that facilitate communication between distributed systems or components by receiving, routing, and delivering messages. They enable asynchronous message passing, decoupling producers (senders) from consumers (receivers), which improves scalability and flexibility. Common functions of message brokers include message queuing, load balancing, and ensuring reliable message delivery through features like persistence and acknowledgment. Popular message brokers include Apache Kafka, RabbitMQ, and ActiveMQ, each offering different features and capabilities suited to various use cases like real-time data processing, event streaming, or task management.

- [articleWhat are Message Brokers?](https://www.ibm.com/topics/message-brokers)
- [videoIntroduction to Message Brokers](https://www.youtube.com/watch?v=57Qr9tk6Uxc)
- [videoKafka vs RabbitMQ](https://www.youtube.com/watch?v=_5mu7lZz5X4)

### Kafka

Apache Kafka is a distributed event streaming platform designed for high-throughput, fault-tolerant data processing. It acts as a message broker, allowing systems to publish and subscribe to streams of records, similar to a distributed commit log. Kafka is highly scalable and can handle large volumes of data with low latency, making it ideal for real-time analytics, log aggregation, and data integration. It features topics for organizing data streams, partitions for parallel processing, and replication for fault tolerance, enabling reliable and efficient handling of large-scale data flows across distributed systems.

- [officalApache Kafka Streams](https://docs.confluent.io/platform/current/streams/concepts.html)
- [officalKafka Streams Confluent](https://kafka.apache.org/documentation/streams/)
- [officialApache Kafka](https://kafka.apache.org/quickstart)
- [videoApache Kafka Fundamentals](https://www.youtube.com/watch?v=B5j3uNBH8X4)
- [videoKafka in 100 Seconds](https://www.youtube.com/watch?v=uvb00oaa3k8)
- [feedExplore top posts about Kafka](https://app.daily.dev/tags/kafka?ref=roadmapsh)

## Search Engines

Search engines like Elasticsearch are specialized tools designed for fast, scalable, and flexible searching and analyzing of large volumes of data. Elasticsearch is an open-source, distributed search and analytics engine built on Apache Lucene, offering full-text search capabilities, real-time indexing, and advanced querying features. Key characteristics of search engines like Elasticsearch include:

1. **Full-Text Search**: Support for complex search queries, including relevance scoring and text analysis.
2. **Distributed Architecture**: Scalability through horizontal distribution across multiple nodes or servers.
3. **Real-Time Indexing**: Ability to index and search data almost instantaneously.
4. **Powerful Query DSL**: A domain-specific language for constructing and executing sophisticated queries.
5. **Analytics**: Capabilities for aggregating and analyzing data, often used for log and event data analysis.

- [officialElasticsearch](https://www.elastic.co/elasticsearch/)

### Elasticsearch

Elastic search at its core is a document-oriented search engine. It is a document based database that lets you INSERT, DELETE , RETRIEVE and even perform analytics on the saved records. But, Elastic Search is unlike any other general purpose database you have worked with, in the past. It's essentially a search engine and offers an arsenal of features you can use to retrieve the data stored in it, as per your search criteria. And that too, at lightning speeds.

- [officialElasticsearch Documentation](https://www.elastic.co/guide/index.html)
- [videoWhat is Elasticsearch](https://www.youtube.com/watch?v=ZP0NmfyfsoM)
- [feedExplore top posts about ELK](https://app.daily.dev/tags/elk?ref=roadmapsh)

## Web Servers

Web servers are software or hardware systems that handle requests from clients (usually web browsers) and serve web content, such as HTML pages, images, and other resources. They process incoming HTTP or HTTPS requests, interact with application servers or databases if needed, and send the appropriate response back to the client. Popular web servers include Apache HTTP Server, Nginx, and Microsoft Internet Information Services (IIS). Web servers are essential for hosting websites and web applications, managing traffic, and ensuring reliable access to online resources by handling concurrent connections, serving static and dynamic content, and providing security features like SSL/TLS encryption.

- [articleWhat is a Web Server? - Mozilla](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server)
- [articleWhat is a Web Server?](https://www.hostinger.co.uk/tutorials/what-is-a-web-server)
- [videoWeb Server Concepts and Examples](https://youtu.be/9J1nJOivdyw)

### Nginx

Nginx is a high-performance, open-source web server and reverse proxy server known for its efficiency, scalability, and low resource consumption. Originally developed as a web server, Nginx is also commonly used as a load balancer, HTTP cache, and mail proxy. It excels at handling a large number of concurrent connections due to its asynchronous, event-driven architecture. Nginx's features include support for serving static content, handling dynamic content through proxying to application servers, and providing SSL/TLS termination. Its modular design allows for extensive customization and integration with various applications and services, making it a popular choice for modern web infrastructures.

- [officialNginx Website](https://nginx.org/)
- [videoNGINX Explained in 100 Seconds](https://www.youtube.com/watch?v=JKxlsvZXG7c)
- [videoNGINX Tutorial for Beginners](https://www.youtube.com/watch?v=9t9Mp0BGnyI)
- [feedExplore top posts about Nginx](https://app.daily.dev/tags/nginx?ref=roadmapsh)

### Apache

Apache, officially known as the Apache HTTP Server, is a free, open-source web server software developed and maintained by the Apache Software Foundation. It's one of the most popular web servers worldwide, known for its robustness, flexibility, and extensive feature set. Apache supports a wide range of operating systems and can handle various content types and programming languages through its modular architecture. It offers features like virtual hosting, SSL/TLS support, and URL rewriting. Apache's configuration files allow for detailed customization of server behavior. While it has faced competition from newer alternatives like Nginx, especially in high-concurrency scenarios, Apache remains widely used due to its stability, comprehensive documentation, and large community support. It's particularly favored for its ability to integrate with other open-source technologies in the LAMP (Linux, Apache, MySQL, PHP/Perl/Python) stack.

- [officialApache Server](https://httpd.apache.org/)
- [officialApache Server Documentation](https://httpd.apache.org/docs/2.4/)
- [videoWhat is Apache Web Server?](https://www.youtube.com/watch?v=kaaenHXO4t4)
- [videoApache vs NGINX](https://www.youtube.com/watch?v=9nyiY-psbMs)
- [feedExplore top posts about Apache](https://app.daily.dev/tags/apache?ref=roadmapsh)

## Real Time Data

Real-time data refers to information that is processed and made available immediately or with minimal delay, allowing users or systems to react promptly to current conditions. This type of data is essential in applications requiring immediate updates and responses, such as financial trading platforms, online gaming, real-time analytics, and monitoring systems. Real-time data processing involves capturing, analyzing, and delivering information as it is generated, often using technologies like stream processing frameworks (e.g., Apache Kafka, Apache Flink) and low-latency databases. Effective real-time data systems can handle high-speed data flows, ensuring timely and accurate decision-making.

- [articleReal-time Data - Wiki](https://en.wikipedia.org/wiki/Real-time_data)
- [articleWhat is Real-time Data?](https://www.qlik.com/us/streaming-data/real-time-data)

### Server Sent Events

Server-Sent Events (SSE) is a technology for sending real-time updates from a server to a web client over a single, persistent HTTP connection. It enables servers to push updates to clients efficiently and automatically reconnects if the connection is lost. SSE is ideal for applications needing one-way communication, such as live notifications or real-time data feeds, and uses a simple text-based format for transmitting event data, which can be easily handled by clients using the `EventSource` API in JavaScript.

- [articleServer Sent Events - MDN](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events)
- [videoServer-Sent Events | Postman Level Up](https://www.youtube.com/watch?v=KrE044J8jEQ&t=1s)

### Web sockets

WebSockets provide a protocol for full-duplex, real-time communication between a client (usually a web browser) and a server over a single, long-lived connection. Unlike traditional HTTP, which requires multiple request-response cycles to exchange data, WebSockets establish a persistent connection that allows for continuous data exchange in both directions. This enables efficient real-time interactions, such as live chat, online gaming, and real-time updates on web pages. WebSocket connections start with an HTTP handshake, then upgrade to a WebSocket protocol, facilitating low-latency communication and reducing overhead compared to HTTP polling or long polling.

- [officialSocket.io Library Bidirectional and Low-latency Communication for Every Platform](https://socket.io/)
- [articleIntroduction to WebSockets](https://www.tutorialspoint.com/websockets/index.htm)
- [videoA Beginners Guide to WebSockets](https://www.youtube.com/watch?v=8ARodQ4Wlf4)
- [videoHow Web Sockets Work](https://www.youtube.com/watch?v=G0_e02DdH7I)

### Long Polling

Long polling is a technique where the client polls the server for new data. However, if the server does not have any data available for the client, instead of sending an empty response, the server holds the request and waits for some specified period of time for new data to be available. If new data becomes available during that time, the server immediately sends a response to the client, completing the open request. If no new data becomes available and the timeout period specified by the client expires, the server sends a response indicating that fact. The client will then immediately re-request data from the server, creating a new request-response cycle.

- [articleLong Polling](https://javascript.info/long-polling)
- [videoWhat is Long Polling?](https://www.youtube.com/watch?v=LD0_-uIsnOE)

### Short Polling

Short polling is a technique where a client periodically sends requests to a server at regular intervals to check for updates or new data. The server responds with the current state or any changes since the last request. While simple to implement and compatible with most HTTP infrastructures, short polling can be inefficient due to the frequent network requests and potential for increased latency in delivering updates. It contrasts with long polling and WebSockets, which offer more efficient mechanisms for real-time communication. Short polling is often used when real-time requirements are less stringent and ease of implementation is a priority.

- [articleAmazon SQS Short and Long Polling](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-short-and-long-polling.html)
- [videoShort Polling vs Long Polling vs WebSockets](https://www.youtube.com/watch?v=ZBM28ZPlin8)

## NoSQL databases

NoSQL databases are a category of database management systems designed for handling unstructured, semi-structured, or rapidly changing data. Unlike traditional relational databases, which use fixed schemas and SQL for querying, NoSQL databases offer flexible data models and can be classified into several types:

1. **Document Stores**: Store data in JSON, BSON, or XML formats, allowing for flexible and hierarchical data structures (e.g., MongoDB, CouchDB).
2. **Key-Value Stores**: Store data as key-value pairs, suitable for high-speed read and write operations (e.g., Redis, Riak).
3. **Column-Family Stores**: Store data in columns rather than rows, which is useful for handling large volumes of data and wide columnar tables (e.g., Apache Cassandra, HBase).
4. **Graph Databases**: Optimize the storage and querying of data with complex relationships using graph structures (e.g., Neo4j, Amazon Neptune).

NoSQL databases are often used for applications requiring high scalability, flexibility, and performance, such as real-time analytics, content management systems, and distributed data storage.

- [articleNoSQL Explained](https://www.mongodb.com/nosql-explained)
- [videoHow do NoSQL Databases work](https://www.youtube.com/watch?v=0buKQHokLK8)
- [videoSQL vs NoSQL Explained](https://www.youtube.com/watch?v=ruz-vK8IesE)
- [feedExplore top posts about NoSQL](https://app.daily.dev/tags/nosql?ref=roadmapsh)

### MongoDB

MongoDB is a NoSQL, open-source database designed for storing and managing large volumes of unstructured or semi-structured data. It uses a document-oriented data model where data is stored in BSON (Binary JSON) format, which allows for flexible and hierarchical data representation. Unlike traditional relational databases, MongoDB doesn't require a fixed schema, making it suitable for applications with evolving data requirements or varying data structures. It supports horizontal scaling through sharding and offers high availability with replica sets. MongoDB is commonly used for applications requiring rapid development, real-time analytics, and large-scale data handling, such as content management systems, IoT applications, and big data platforms.

- [roadmapVisit Dedicated MongoDB Roadmap](https://roadmap.sh/mongodb)
- [officialMongoDB Website](https://www.mongodb.com/)
- [officialLearning Path for MongoDB Developers](https://learn.mongodb.com/catalog)
- [articleMongoDB Online Sandbox](https://mongoplayground.net/)
- [feeddaily.dev MongoDB Feed](https://app.daily.dev/tags/mongodb)

### Redis

Redis is an open-source, in-memory data structure store known for its speed and versatility. It supports various data types, including strings, lists, sets, hashes, and sorted sets, and provides functionalities such as caching, session management, real-time analytics, and message brokering. Redis operates as a key-value store, allowing for rapid read and write operations, and is often used to enhance performance and scalability in applications. It supports persistence options to save data to disk, replication for high availability, and clustering for horizontal scaling. Redis is widely used for scenarios requiring low-latency access to data and high-throughput performance.

- [roadmapVisit Dedicated Redis Roadmap](https://roadmap.sh/redis)
- [courseRedis Crash Course](https://www.youtube.com/watch?v=XCsS_NVAa1g)
- [officialRedis](https://redis.io/)
- [officialRedis Documentation](https://redis.io/docs/latest/)
- [videoRedis in 100 Seconds](https://www.youtube.com/watch?v=G1rOthIU-uo)
- [feedExplore top posts about Redis](https://app.daily.dev/tags/redis?ref=roadmapsh)

### Firebase

Firebase is a comprehensive mobile and web application development platform owned by Google. It provides a suite of cloud-based services that simplify app development, hosting, and scaling. Key features include real-time database, cloud storage, authentication, hosting, cloud functions, and analytics. Firebase offers real-time synchronization, allowing data to be updated across clients instantly. Its authentication service supports multiple providers, including email/password, social media logins, and phone authentication. The platform's serverless architecture enables developers to focus on front-end development without managing backend infrastructure. Firebase also provides tools for app testing, crash reporting, and performance monitoring.

- [courseThe Ultimate Guide to Firebase](https://fireship.io/lessons/the-ultimate-beginners-guide-to-firebase/)
- [officialFirebase](https://firebase.google.com/)
- [officialFirebase Documentation](https://firebase.google.com/docs)
- [videoFirebase in 100 seconds](https://www.youtube.com/watch?v=vAoB4VbhRzM)

### InfluxDB

InfluxDB is a high-performance, open-source time-series database designed for handling large volumes of timestamped data, such as metrics, events, and real-time analytics. It is optimized for use cases like monitoring, IoT, and application performance management, where data arrives in continuous streams. InfluxDB supports SQL-like queries through its query language (Flux), and it can handle high write and query loads efficiently. Key features include support for retention policies, downsampling, and automatic data compaction, making it ideal for environments that require fast and scalable time-series data storage and retrieval.

- [officialInfluxDB Website](https://www.influxdata.com/)
- [articleTime series database](https://www.influxdata.com/time-series-database/)
- [videoThe Basics of Time Series Data](https://www.youtube.com/watch?v=wBWTj-1XiRU)

### Cassandra

Apache Cassandra is a highly scalable, distributed NoSQL database designed to handle large amounts of structured data across multiple commodity servers. It provides high availability with no single point of failure, offering linear scalability and proven fault-tolerance on commodity hardware or cloud infrastructure. Cassandra uses a masterless ring architecture, where all nodes are equal, allowing for easy data distribution and replication. It supports flexible data models and can handle both unstructured and structured data. Cassandra excels in write-heavy environments and is particularly suitable for applications requiring high throughput and low latency. Its data model is based on wide column stores, offering a more complex structure than key-value stores. Widely used in big data applications, Cassandra is known for its ability to handle massive datasets while maintaining performance and reliability.

- [officialApache Cassandra](https://cassandra.apache.org/_/index.html)
- [articlearticle@Cassandra - Quick Guide](https://www.tutorialspoint.com/cassandra/cassandra_quick_guide.htm)
- [videoApache Cassandra - Course for Beginners](https://www.youtube.com/watch?v=J-cSy5MeMOA)

### NEO4J

Neo4j is a highly popular open-source graph database designed to store, manage, and query data as interconnected nodes and relationships. Unlike traditional relational databases that use tables and rows, Neo4j uses a graph model where data is represented as nodes (entities) and edges (relationships), allowing for highly efficient querying of complex, interconnected data. It supports Cypher, a declarative query language specifically designed for graph querying, which simplifies operations like traversing relationships and pattern matching. Neo4j is well-suited for applications involving complex relationships, such as social networks, recommendation engines, and fraud detection, where understanding and leveraging connections between data points is crucial.

- [officialNeo4j Website](https://neo4j.com/)
- [videoNeo4j in 100 Seconds](https://www.youtube.com/watch?v=T6L9EoBy8Zk)
- [videoNeo4j Course for Beginners](https://www.youtube.com/watch?v=_IgbB24scLI)

## Building for Scale

Speaking in general terms, scalability is the ability of a system to handle a growing amount of work by adding resources to it. A software that was conceived with a scalable architecture in mind, is a system that will support higher workloads without any fundamental changes to it, but don't be fooled, this isn't magic. You'll only get so far with smart thinking without adding more sources to it. When you think about the infrastructure of a scalable system, you have two main ways of building it: using on-premises resources or leveraging all the tools a cloud provider can give you.

The main difference between on-premises and cloud resources will be **flexibility**, on cloud providers you don't really need to plan ahead, you can upgrade your infrastructure with a couple of clicks, while with on-premises resources you will need a certain level of planning.

- [articleScalable Architecture: A Definition and How-To Guide](https://www.sentinelone.com/blog/scalable-architecture/)
- [videoScaling Distributed Systems - Software Architecture Introduction](https://www.youtube.com/watch?v=gxfERVP18-g)

### Graceful Degradation

Graceful degradation is a design principle that states that a system should be designed to continue functioning, even if some of its components or features are not available. In the context of web development, graceful degradation refers to the ability of a web page or application to continue functioning, even if the user's browser or device does not support certain features or technologies. Graceful degradation is often used as an alternative to progressive enhancement, a design principle that states that a system should be designed to take advantage of advanced features and technologies if they are available.

- [articleWhat is Graceful Degradation & Why Does it Matter?](https://blog.hubspot.com/website/graceful-degradation)
- [articleFour Considerations When Designing Systems For Graceful Degradation](https://newrelic.com/blog/best-practices/design-software-for-graceful-degradation)
- [videoGraceful Degradation - Georgia Tech](https://www.youtube.com/watch?v=Tk7e0LMsAlI)

### Throttling

Throttling is a technique used to control the rate at which requests or operations are processed, typically to prevent overloading a system or service. It involves setting limits on the number of requests a user or application can make within a specific time period. Throttling helps manage resource consumption, ensure fair usage, and maintain system stability by avoiding excessive load that could degrade performance or cause outages. It is commonly implemented in APIs, network services, and databases to balance demand, protect against abuse, and ensure consistent performance across users and services.

- [articleThrottling - AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/2022-03-31/framework/rel_mitigate_interaction_failure_throttle_requests.html)
- [videoThrottling vs Debouncing](https://www.youtube.com/watch?v=tJhA0DrH5co)

### Backpressure

Back pressure is a flow control mechanism in systems processing asynchronous data streams, where the receiving component signals its capacity to handle incoming data to the sending component. This feedback loop prevents overwhelming the receiver with more data than it can process, ensuring system stability and optimal performance. In software systems, particularly those dealing with high-volume data or event-driven architectures, back pressure helps manage resource allocation, prevent memory overflows, and maintain responsiveness. It's commonly implemented in reactive programming, message queues, and streaming data processing systems. By allowing the receiver to control the flow of data, back pressure helps create more resilient, efficient systems that can gracefully handle varying loads and prevent cascading failures in distributed systems.

- [articleAwesome Architecture: Backpressure](https://awesome-architecture.com/back-pressure/)
- [articleBackpressure explained — The Resisted Flow of Data through Software](https://medium.com/@jayphelps/backpressure-explained-the-flow-of-data-through-software-2350b3e77ce7)
- [videoWhat is Back Pressure](https://www.youtube.com/watch?v=viTGm_cV7lE)

# Load Shifting

Load shifting is a strategy used to manage and distribute computing or system workloads more efficiently by moving or redistributing the load from peak times to off-peak periods. This approach helps in balancing the demand on resources, optimizing performance, and reducing costs. In cloud computing and data centers, load shifting can involve rescheduling jobs, leveraging different regions or availability zones, or adjusting resource allocation based on real-time demand. By smoothing out peak loads, organizations can enhance system reliability, minimize latency, and better utilize their infrastructure.

- [wikiLoad Shifting](https://en.wikipedia.org/wiki/Load_shifting)
- [videoLoad Shifting 101](https://www.youtube.com/watch?v=DOyMJEdk5aE)

### Circuit Breaker

The circuit breaker design pattern is a way to protect a system from failures or excessive load by temporarily stopping certain operations if the system is deemed to be in a failed or overloaded state. It is commonly used in cloud computing environments to prevent cascading failures and to improve the resilience and availability of a system. A circuit breaker consists of three states: closed, open, and half-open. In the closed state, the circuit breaker allows operations to proceed as normal. If the system encounters a failure or becomes overloaded, the circuit breaker moves to the open state, and all subsequent operations are immediately stopped. After a specified period of time, the circuit breaker moves to the half-open state, and a small number of operations are allowed to proceed. If these operations are successful, the circuit breaker moves back to the closed state; if they fail, the circuit breaker moves back to the open state.

- [articleCircuit Breaker - AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/reliability-pillar/rel_mitigate_interaction_failure_graceful_degradation.html)
- [articleThe Circuit Breaker Pattern](https://aerospike.com/blog/circuit-breaker-pattern/)
- [videoBack to Basics: Static Stability Using a Circuit Breaker Pattern](https://www.youtube.com/watch?v=gy1RITZ7N7s)

### Migration Strategies

Migration strategies involve planning and executing the transition of applications, data, or infrastructure from one environment to another, such as from on-premises systems to the cloud or between different cloud providers. Key strategies include:

1. **Rehost (Lift and Shift)**: Moving applications as-is to the new environment with minimal changes, which is often the quickest but may not fully leverage new platform benefits.
2. **Replatform**: Making some optimizations or changes to adapt applications for the new environment, enhancing performance or scalability while retaining most of the existing architecture.
3. **Refactor**: Redesigning and modifying applications to optimize for the new environment, often taking advantage of new features and improving functionality or performance.
4. **Repurchase**: Replacing existing applications with new, often cloud-based, solutions that better meet current needs.
5. **Retain**: Keeping certain applications or systems in their current environment due to specific constraints or requirements.
6. **Retire**: Decommissioning applications that are no longer needed or are redundant.

- [articleDatabases as a Challenge for Continuous Delivery](https://phauer.com/2015/databases-challenge-continuous-delivery/)
- [videoAWS Cloud Migration Strategies](https://www.youtube.com/watch?v=9ziB82V7qVM)

### Horizontal/Vertical Scaling

Horizontal scaling (scaling out/in) involves adding or removing instances of resources, such as servers or containers, to handle increased or decreased loads. It distributes the workload across multiple instances to improve performance and redundancy. This method enhances the system's capacity by expanding the number of nodes in a distributed system.

Vertical scaling (scaling up/down) involves increasing or decreasing the resources (CPU, memory, storage) of a single instance or server to handle more load or reduce capacity. This method improves performance by upgrading the existing hardware or virtual machine but has limits based on the maximum capacity of the individual resource.

- [articleHorizontal vs Vertical Scaling](https://touchstonesecurity.com/horizontal-vs-vertical-scaling-what-you-need-to-know/)
- [videoVertical Vs Horizontal Scaling: Key Differences You Should Know](https://www.youtube.com/watch?v=dvRFHG2-uYs)
- [videoSystem Design 101](https://www.youtube.com/watch?v=Y-Gl4HEyeUQ)

### Observability

Observability refers to the ability to understand and monitor the internal state of a system based on its external outputs, such as metrics, logs, and traces. It encompasses collecting, analyzing, and visualizing data to gain insights into system performance, detect anomalies, and troubleshoot issues. Effective observability involves integrating these data sources to provide a comprehensive view of system behavior, enabling proactive management and rapid response to problems. It helps in understanding complex systems, improving reliability, and optimizing performance by making it easier to identify and address issues before they impact users.

- [articleDataDog Docs](https://docs.datadoghq.com/)
- [articleAWS CloudWatch Docs](https://aws.amazon.com/cloudwatch/getting-started/)
- [articleSentry Docs](https://docs.sentry.io/)
- [articleObservability and Instrumentation: What They Are and Why They Matter](https://newrelic.com/blog/best-practices/observability-instrumentation)
- [videoWhat is observability?](https://www.youtube.com/watch?v=--17See0KHs)
- [feedExplore top posts about Observability](https://app.daily.dev/tags/observability?ref=roadmapsh)

### Instrumentation, Monitoring, and Telemetry

Instrumentation, monitoring, and telemetry are critical components for ensuring system reliability and performance. _Instrumentation_ refers to embedding code or tools within applications to capture key metrics, logs, and traces. _Monitoring_ involves observing these metrics in real time to detect anomalies, failures, or performance issues, often using dashboards and alerting systems. _Telemetry_ is the automated collection and transmission of this data from distributed systems, enabling visibility into system behavior. Together, these practices provide insights into the health, usage, and performance of systems, aiding in proactive issue resolution and optimizing overall system efficiency.

- [articleWhat is Instrumentation?](https://en.wikipedia.org/wiki/Instrumentation_/\(computer_programming/\))
- [articleWhat is Monitoring?](https://www.yottaa.com/performance-monitoring-backend-vs-front-end-solutions/)
- [articleWhat is Telemetry?](https://www.sumologic.com/insight/what-is-telemetry/)
- [videoObservability vs. APM vs. Monitoring](https://www.youtube.com/watch?v=CAQ_a2-9UOI)
- [feedExplore top posts about Monitoring](https://app.daily.dev/tags/monitoring?ref=roadmapsh)

### Monitoring

Monitoring involves continuously observing and tracking the performance, availability, and health of systems, applications, and infrastructure. It typically includes collecting and analyzing metrics, logs, and events to ensure systems are operating within desired parameters. Monitoring helps detect anomalies, identify potential issues before they escalate, and provides insights into system behavior. It often involves tools and platforms that offer dashboards, alerts, and reporting features to facilitate real-time visibility and proactive management. Effective monitoring is crucial for maintaining system reliability, performance, and for supporting incident response and troubleshooting.

- [articleTop Monitoring Tools](https://thectoclub.com/tools/best-application-monitoring-software/)
- [videoGrafana Explained in 5 Minutes](https://www.youtube.com/watch?v=lILY8eSspEo)
- [feeddaily.dev Monitoring Feed](https://app.daily.dev/tags/monitoring)

### Telemetry

Telemetry involves the automated collection, transmission, and analysis of data from remote or distributed systems to monitor their performance and health. It provides real-time insights into system operations, helping to identify and diagnose issues, optimize performance, and ensure reliability. Telemetry systems collect metrics such as resource usage, error rates, and system events, which are then analyzed to detect anomalies, track trends, and inform decision-making. This data-driven approach is crucial for maintaining and improving the performance and stability of software applications, networks, and hardware systems.

- [courseOpenTelemetry Course - Understand Software Performance](https://www.youtube.com/watch?v=r8UvWSX3KA8)
- [articleWhat is telemetry and how does it work?](https://www.techtarget.com/whatis/definition/telemetry)
- [feeddaily.dev OpenTelemetry feed](https://app.daily.dev/tags/opentelemetry)


[[300_devops]]
