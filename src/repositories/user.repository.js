const { PrismaClient } = require('@prisma/client');
const prisma = new PrismaClient();

class UserRepository { 
    async findById(userId) {
        return await prisma.user.findUnique({
            where: { id: userId },
            select: {
                id: true,
                name: true,
                firstName: true,
                lastName: true,
                email: true,
                createdAt: true,
                updatedAt: true
            }
        });
    }
}

module.exports = new UserRepository();