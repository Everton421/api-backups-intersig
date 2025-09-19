import { relations } from "drizzle-orm/relations";
import { users, projects } from "./schema";

export const projectsRelations = relations(projects, ({one}) => ({
	user: one(users, {
		fields: [projects.idUser],
		references: [users.idUser]
	}),
}));

export const usersRelations = relations(users, ({many}) => ({
	projects: many(projects),
}));