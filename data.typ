#let personal = (
    name: "Jonathan Jin",
    email: "me@jonathanj.in",
    url: "https://jonathanj.in",
    linkedin: "https://linkedin.com/in/jinnovation",
    github: "https://github.com/jinnovation",
    huggingface: "https://huggingface.co/jinnovation",
)

#let skills = (
    "Generative AI": (
        "Phoenix",
        "OpenInference",
    ),
    "Machine Learning and Data": (
        link("https://ray.io")[Ray],
        link("https://pytorch.org")[PyTorch],
        link("https://spark.apache.org")[Apache Spark],
        link("https://flink.apache.org/")[Apache Flink],
        link("https://mlflow.org")[MLflow],
        link("https://airflow.apache.org")[Apache Airflow],
        link("https://www.kubeflow.org")[Kubeflow],
        link("https://www.tensorflow.org")[TensorFlow],
    ),
    "Infrastructure and Distributed Systems": (
        "Kubernetes",
        "Terraform",
        "Helm",
        "Prometheus",
        "OpenTelemetry",
        "gRPC",
        "Docker",
    ),
    "Enterprise Platforms": (
        "Amazon Web Services (AWS)",
        "Google Cloud (GCP)",
        link("https://databricks.com")[Databricks],
        link("https://arize.com")[Arize],
    ),
    "Programming Languages": (
        "Python",
        "Go",
        "C++",
        "Java",
    )
)

#let education = (
    (
        institution: "University of Chicago",
        url: "https://uchicago.edu",
        area: "Computer Science",
        startYear: 2011,
        endYear: 2015,
        location: "Chicago, IL",
        degrees: (
            (
                type: "B.S.",
                area: "Computer Science",
            ),
            (
                type: "B.A",
                area: "Economics",
            )
        )
    ),
)

#let speaking = (
    (
        title: "Trimming the Long Tail of Production Model Ownership at Hinge",
        url: "https://www.youtube.com/watch?v=AaEMUlmKO4s&list=PLAesBe-zAQmFUeS0gMFSII4m-Zw4CoOoE",
        conference: "Data Council",
        date: "2025-04-22",
    ),
    (
        title: "Accelerating Time-to-Production for ML at Hinge",
        url: "https://youtu.be/_nsTcYtfnXU",
        conference: "Ray Summit",
        date: "2024-09-30",
    ),
    (
        title: "How Spotify is Navigating an Evolving ML Landscape with Hendrix Platform",
        url: "https://twimlai.com/conf/twimlcon/2022/session/how-spotify-is-navigating-an-evolving-ml-landscape-with-hendrix-platform/",
        conference: "TWIMLcon AI Platforms",
        date: "2022-10-04",
        hide: true,
    ),

    (
        title: "Empowering Traceable and Auditable ML in Production at Spotify with Hendrix",
        url: "https://mlconf.com/sessions/empowering-traceable-and-auditable-ml-in-production-at-spotify-with-hendrix",
        conference: "MLconf",
        date: "2022-03-28",
    ),
    (
        conference: "KubeCon + CloudNativeCon",
        url: "https://www.youtube.com/watch?v=KUyEuY5ZSqI",
        title: "Scaling Kubeflow for Multi-tenancy at Spotify",
        date: "2021-10-07",
    ),
)

#let work = (
    (
        organization: "Hinge",
        url: "https://hinge.co",
        position: "Staff Machine Learning Engineer",
        startDate: "2024-04-15",
        location: "New York, NY",
        blurb: [
            Leading the democratization and platformization of AI at Hinge.
        ],
        highlights: (
            [
                Spearheading the 0-to-1 development of *generative AI platform
                and infrastructure* at Hinge, with a starting focus on *evals
                and online monitoring*. Leading vendor evaluations for
                solutions to monitoring generative AI systems, prompt
                management, A/B testing, etc. Implemented a platform for
                generative AI systems, prompt management, and judge-based
                evaluations based on OpenTelemetry,
                #link("https://github.com/Arize-ai/openinference")[OpenInference],
                and #link("https://docs.arize.com/phoenix")[Phoenix] in
                collaboration with stakeholders across Backend, AI, and Data
                disciplines. Defining and steering the strategy, roadmap, and
                platform architecture for judge-based evaluations, tracing of
                production foundation model invocations via OpenTelemetry, and
                hot-path guardrailing of LLM inputs and outputs.
            ],
            [
                Owned the *model serving strategy* from end-to-end. Delivered a
                generally-available platform based on MLflow, Ray, and Spark in
                three quarters that reduced time-to-production for net-new
                models by \~50%. Developed year-long strategy and roadmap from
                first principles, aligning the AI Platform Core team on core
                focuses -- system and model observability; model governance;
                unified artifact management for heterogeneous deployment
                environments. Drove close collaboration across cross-functional
                platform partner teams in Data and Engineering.
            ],
            // [
            //     // There's a lot of hidden stuff here about using Top Photo to
            //     // prototype/experiment with new serving pattern to use as the
            //     // foundation for model serving org-wide.
            //     Re-architected photo-scoring pipeline for
            //     #link("https://hingeapp.zendesk.com/hc/en-us/articles/26558052212627-What-is-Top-Photo")[Top
            //     Photo] to enable multi-plexed rescoring of user photos in
            //     near-real-time using Databricks Delta Live Tables, Spark, Flink,
            //     and Ray Serve; reduced rollout time of new photo-scoring models
            //     from months to one week.
            // ],
            // TODO: Soft work?
        )
    ),
    (
        organization: "Humane Intelligence",
        url: "https://www.humane-intelligence.org/",
        position: "Engineering Advisor",
        startDate: "2024-02-01",
        endDate: "2024-08-30",
        location: "New York, NY",
        hide: true,
        blurb: [
            "Fractional" tech lead and architect. Partner with the CEO to define
            and execute on engineering strategies, including hiring and vendor
            selection. Contribute in hands-on capacity for technical
            proofs-of-concepts.
        ],
        highlights: (
            [
                Coordinated the hiring and management of a team of engineering
                contractors and an external development agency; defined,
                communicated, and coordinated development roadmap, led platform
                evaluations, and defined technical ways-of-working for a
                brand-new team;
            ],
            [
                Led 0-to-1 development of platform for collaborative,
                crowd-sourced auditing of large language models (open-source and
                vendor) using Vercel, Next.js, and the Hugging Face API; enabled
                over 100
                "#link("https://www.humane-intelligence.org/bounty1")[bias
                bounty]" participants to contribute over 30 submissions via
                Hugging Face API.
            ],
        ),
    ),
    (

        organization: "Spotify",
        position: "Senior Machine Learning Engineer",
        url: none,
        location: "New York, NY",
        startDate: "2021-03-01",
        endDate: "2024-03-04",
        blurb: [
            Senior member of the ML Platform org. Primarily focused on managed
            multi-tenant compute infrastructure for Kubeflow and Ray in
            GCP. Later shifted focus to AI/ML governance and artifact/experiment
            management solutions.
        ],
        highlights: (
            [
                Drove early-stage evaluation and implementation of centralized,
                multi-tenant Ray infrastructure based on KubeRay;
            ],
            [
                Led development of Backstage-based model governance
                solution in preparation for the EU Digital Services Act;
            ],
            [
                Defined and drove general-availability roadmap for
                Kubeflow-based orchestration product; defined SLOs and educated
                ML Platform org on SRE best practices.
            ],
        ),
    ),
    (
        organization: "NVIDIA",
        position: "Senior Systems Software Engineer, AI Infrastructure",
        location: "New York, NY",
        startDate: "2019-12-01",
        endDate: "2021-01-01",
        url: none,
        blurb: [
            Worked on AI infrastructure for autonomous vehicle research and development.
        ],
),
    (
        organization: "Twitter",
        position: "Machine Learning Software Engineer",
        startDate: "2018-08-01",
        endDate: "2019-12-01",
        url: none,
        location: "New York, NY",
        blurb: [
            Member of Cortex, Twitter's central ML platform organization. Worked
            on: workflow orchestration; experiment management.
        ],
        // highlights: (
        //     [
        //         Enabled distributed training of TensorFlow models in Apache
        //         Mesos from an Airflow pipeline via Deepbird, Twitter's
        //         TensorFlow-based model training/evaluating/serving framework
        //     ],
        // ),
    ),
    (
        organization: "Uber",
        position: "Software Engineer, Observability",
        startDate: "2016-07-01",
        endDate: "2018-07-01",
        location: "New York, NY",
        hide: true,
    ),
    (
        organization: "OkCupid",
        position: "Software Engineer",
        location: "New York, NY",
        startDate: "2015-07-01",
        endDate: "2016-07-01",
        hide: true,
    )
)
