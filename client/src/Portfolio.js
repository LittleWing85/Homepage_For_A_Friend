import { useState, useEffect } from "react";
import Project from "./Project";

export default function Portfolio() {
    const [allProjects, setAllProjects] = useState([]);
    const [projectSelected, setProjectSelected] = useState(false);
    const [selectedProjectId, setSelectedProjectId] = useState(0);

    useEffect(() => {
        fetch("/api/allProjects")
            .then((response) => response.json())
            .then((data) => setAllProjects(data));
    }, []);

    function displayProjectInfo(projectId) {
        //console.log(projectId); WORKS! Is logged every time an image is clicked
        setProjectSelected(true);
        setSelectedProjectId(projectId);
    }

    return (
        <div>
            {projectSelected && <Project projectId={selectedProjectId} />}
            <ul className="wrapper">
                {allProjects.map((project) => (
                    <li
                        className="noListStyle portfolioCard"
                        name={"Hello"}
                        key={project.id}
                        onClick={() => displayProjectInfo(project.id)}
                    >
                        <div className="portfolioProjectOverlay">
                            <p className="portfolioProjectData">
                                {project.project_name}
                            </p>
                        </div>
                        <img src={project.project_picture_url} />
                    </li>
                ))}
            </ul>
        </div>
    );
}
