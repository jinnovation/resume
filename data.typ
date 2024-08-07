#let personal = (
    name: "Jonathan Jin",
    email: "me@jonathanj.in",
    url: "https://jonathanj.in",
    linkedin: "https://linkedin.com/in/jinnovation",
    github: "https://github.com/jinnovation",
    huggingface: "https://huggingface.co/jinnovation",
)

#let skills = (
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
        "Prometheus",
        "gRPC",
        "Docker",
    ),
    "Enterprise Platforms": (
        "Amazon Web Services (AWS)",
        "Google Cloud (GCP)",
        link("https://databricks.com")[Databricks],
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
        title: "How Spotify is Navigating an Evolving ML Landscape with Hendrix Platform",
        url: "https://twimlai.com/conf/twimlcon/2022/session/how-spotify-is-navigating-an-evolving-ml-landscape-with-hendrix-platform/",
        conference: "TWIMLcon AI Platforms",
        date: "2022-10-04",
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
        position: "Staff Machine Learning Engineer, AI Platform",
        startDate: "2024-04-15",
        location: "New York, NY",
        blurb: [
            Leading the platformization of Hinge's disparate AI/ML efforts.
        ],
    ),
    (
        organization: "Humane Intelligence",
        url: "https://www.humane-intelligence.org/",
        position: "Engineering Advisor",
        startDate: "2024-02-01",
        location: "New York, NY",
        blurb: [
            "Fractional" tech lead and architect. Partner with the CEO to define
            and execute on engineering strategies, including hiring and vendor
            selection. Contribute in hands-on capacity for technical
            proofs-of-concepts.
        ],
    ),
    (

        organization: "Spotify",
        position: "Senior Machine Learning Engineer",
        url: none,
        location: "New York, NY",
        startDate: "2021-03-01",
        endDate: "2024-03-04",
        blurb: [
            Senior member of the ML Platform organization; contributed to and
            maintained Hendrix, Spotify's centralized machine learning
            platform. Primarily focused on managed multi-tenant compute
            infrastructure for Kubeflow and Ray in GCP. Later shifted focus to
            AI/ML governance and artifact/experiment management solutions.
        ],
        highlights: (
            [
                Evaluated Ray for adoption into the Hendrix platform in
                collaboration with the maintainer team at Anyscale; informed the
                development of Hendrix's initial centralized multi-tenant Ray
                instructure based on KubeRay;
            ],
            [
                Spearheaded development of Backstage-based model governance
                solution in collaboration with non-technical stakeholders (Legal
                and Trust & Safety) in preparation for the EU Digital Services
                Act;
            ],
            [
                Brought Hendrix's flagship Kubeflow-based orchestration product
                to general availability; defined multi-quarter engineering
                roadmap in collaboration with product and engineering
                stakeholders spanning infrastructural (SLOs, observability) and
                user-facing (documentation, API cleanliness) needs.
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
        highlights: (
            [
                Implemented prototype for horizontally-scalable model-parallel
                training for multi-task learning using parameter server approach
                based on Ray and Horovod;
            ],
            [
                Implement custom Kubernetes scheduler for preemptible workloads
                and resource reservations in an on-prem GPU cluster.
            ],
        ),
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
            on: workflow orchestration; experiment management/iteration; and
            overall ML engineering productivity.
        ],
        highlights: (
            [
                Enabled distributed training of TensorFlow models in Apache
                Mesos from an Airflow pipeline via Deepbird, Twitter's
                TensorFlow-based model training/evaluating/serving framework
            ],
        ),
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
