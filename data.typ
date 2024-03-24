#let personal = (
    name: "Jonathan Jin",
    email: "me@jonathanj.in",
    url: "https://jonathanj.in",
    linkedin: "https://linkedin.com/in/jinnovation",
    github: "https://github.com/jinnovation",
    huggingface: "https://huggingface.co/jinnovation",
)

#let skills = (
    "Programming Languages": (
        "Python",
        "Go",
        "C++",
        "Java",
    ),
    "Machine Learning and MLOps": (
        link("https://ray.io")[Ray],
        link("https://www.kubeflow.org/")[Kubeflow],
        link("https://airflow.apache.org/")[Airflow],
        link("https://www.tensorflow.org/")[TensorFlow],
    ),
    "Infrastructure and Distributed Systems": (
        "Google Cloud (GCP)",
        "Kubernetes",
        "Terraform",
        "Prometheus",
        "gRPC",
        "Docker",
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
