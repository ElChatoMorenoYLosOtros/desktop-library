import ClientEntity from '@clients/entities/client.entity';
import MaterialEntity from '@materials/entities/material.entity';
import { ApiProperty } from '@nestjs/swagger';
import { Loan } from '@prisma/client';
import ReturnEntity from '@returns/entities/return.entity';

export default class LoanEntity implements Loan {
  @ApiProperty()
  loanId: number;

  @ApiProperty()
  clientId: number;

  @ApiProperty()
  materialId: number;

  @ApiProperty()
  loanDate: Date;

  @ApiProperty()
  returnDate: Date | null;

  @ApiProperty()
  returned: boolean;

  @ApiProperty({ type: () => ClientEntity })
  client: ClientEntity;

  @ApiProperty({ type: () => MaterialEntity })
  material: MaterialEntity;

  @ApiProperty({ type: () => ReturnEntity })
  returns?: ReturnEntity;
}
