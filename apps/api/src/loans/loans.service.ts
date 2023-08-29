import { Injectable } from '@nestjs/common';
import PrismaService from 'src/prisma/prisma.service';
import CreateLoanDto from './dto/create-loan.dto';
import UpdateLoanDto from './dto/update-loan.dto';

@Injectable()
export default class LoansService {
  constructor(private readonly prisma: PrismaService) {}

  async create(createLoanDto: CreateLoanDto) {
    const loanData = {
      clientId: createLoanDto.clientId,
      materialId: createLoanDto.materialId,
      loanDate: createLoanDto.loanDate,
      returnDate: createLoanDto.returnDate,
      returned: createLoanDto.returned
    };

    const createdLoan = await this.prisma.loan.create({
      data: loanData
    });
    return createdLoan;
  }

  findAll() {
    return this.prisma.loan.findMany();
  }

  findOne(loanId: number) {
    return this.prisma.loan.findMany({
      where: { loanId }
    });
  }

  update(loanId: number, updateLoanDto: UpdateLoanDto) {
    return this.prisma.loan.update({
      where: { loanId },
      data: updateLoanDto
    });
  }

  remove(loanId: number) {
    return this.prisma.loan.delete({
      where: { loanId }
    });
  }
}