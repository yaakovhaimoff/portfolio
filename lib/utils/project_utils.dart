class ProjectUtils {
	final String image;
	final String title;
	final String subtitle;
	final String? githubLink;
	final String? webLink;
	final String? youtubeLink;

	ProjectUtils({
		required this.image,
		required this.title,
		required this.subtitle,
		this.githubLink,
		this.webLink,
		this.youtubeLink,
	});
}

// PROJECTS
List<ProjectUtils> hobbyProjectUtils = [
	ProjectUtils(
		image: 'assets/projects/01.png',
		title: 'WizzAir AYCF Bot',
		subtitle:
				'A smart bot that searches WizzAir’s All You Can Fly flights, including one-stop connections — so you don’t have to.',
		githubLink:
				'https://github.com/yaakovhaimoff/aycf-bot',
		youtubeLink:
				'https://www.youtube.com/watch?v=GkbGGOS60vw&ab_channel=YanaiFaran',
	),
	ProjectUtils(
		image: 'assets/projects/02.png',
		title: 'WorkersSchedule',
		subtitle:
				'A web application for managing employee schedules and shifts.',
		githubLink:
				'https://github.com/yaakovhaimoff/WorkersSchedule',
		webLink:
				'https://yaakovhaimoff.github.io/WorkersSchedule/',
	),
];

