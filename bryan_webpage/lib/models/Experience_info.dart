class ExperienceInfo {
  final String? company, position, label;

  ExperienceInfo({this.company, this.position, this.label});
}

final List<ExperienceInfo> demo_experience = [
  ExperienceInfo(
    company: "Auplex",
    position: "Scrum Master",
    label:
        "At Auplex, my role is Scrum Master. As such, my mission within this company is to implement the use of agile methodologies through the Scrum Framework, in order to achieve customer satisfaction with continuous and value deliveries, as well as improve software development processes.",
  ),
  ExperienceInfo(
    company: "NorthWest",
    position: "Sales Advisor",
    label:
        "At NorthWest, my mission was to advise on the products or services we offered, make a mapping of clients or prospects, customer follow-up and achive sales targets.",
  ),
  ExperienceInfo(
    company: "ReservApp",
    position: "Product Owner",
    label:
        "At ReservApp, my role is PM Jr. and Product Owner, my mission is to add value for the business and recruit and hire the best developers.",
  ),
];
