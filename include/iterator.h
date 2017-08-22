/**
 * include/iterator.h
 * Generic abstract class for iterators.
 */

#pragma once
namespace containerspp {
  template <typename ContainerType, typename ElementType>
  class Iterator {
  public:
    virtual bool hasNext()=0;
    virtual bool hasPrevious()=0;
    virtual ElementType * next()=0;
    virtual ElementType * previous()=0;
  private:
    const ContainerType * container;
  };
}
